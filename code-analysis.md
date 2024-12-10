# Code Analysis

## Introduction

Ensuring proper software assurance begins with analyzing potential attack scenarios and identifying the requirements to secure the software and validate its functionality. With these threats addressed and security measures planned, we shift our focus to source code review. This step determines whether the current code meets assurance standards or requires modifications to address security gaps. Our approach integrates automated scanning tools, manual reviews, and cross-referencing findings against identified threats and vulnerabilities.

## Part 1: Code Review

**Scope and Strategy:**

We started by reviewing known CWEs associated with both Keycloak and Java-based systems in general. To analyze Keycloak-specific vulnerabilities, we used [Snyk](https://security.snyk.io/package/maven/org.keycloak%3Akeycloak-core), which provides a comprehensive list of CVEs linked to Keycloak along with their corresponding CWEs for a starting point. Furthermore, we decided to perform a broader analysis of Keycloak to capture any potential security issues or CWEs that might be relevant to the platform and the topics we have covered previously.

**CWE Checklist:**
| Serial | CWE | Type | Name | Focus |
|:-------|:------|:-------|:------------------------------------------|:-------------------------------------------|
| 1 | [CWE-287](https://cwe.mitre.org/data/definitions/287.html) | Base | Improper Authentication | Verify OAuth/OIDC authentication flows ([UC-1/MUC-1](software-security-assurance-cases.md#assurance-case-1-encrypted-credentials-during-transit)) |
| 2 | [CWE-613](https://cwe.mitre.org/data/definitions/613.html) | Base | Insufficient Session Expiration | Token lifespan and refresh token handling ([UC-2/MUC-2](software-security-assurance-cases.md#assurance-case-2-keycloak-minimizes-undetected-changes-to-administrative-operations)) |
| 3 | [CWE-295](https://cwe.mitre.org/data/definitions/295.html) | Base | Improper Certificate Validation | IDP certificate validation routines ([UC-3/MUC-3](software-security-assurance-cases.md#assurance-case-3-keycloak-diminishes-database-misuse)) |
| 4 | [CWE-601](https://cwe.mitre.org/data/definitions/601.html) | Base | URL Redirection | OAuth redirect validation logic ([UC-1/MUC-1](software-security-assurance-cases.md#assurance-case-1-encrypted-credentials-during-transit)) |
| 5 | [CWE-347](https://cwe.mitre.org/data/definitions/347.html) | Base | Improper Crypto Signature Verification | JWT signature validation code ([UC-2/MUC-2](software-security-assurance-cases.md#assurance-case-2-keycloak-minimizes-undetected-changes-to-administrative-operations)) |
| 6 | [CWE-522](https://cwe.mitre.org/data/definitions/522.html) | Base | Insufficient Protection of Credentials | Credential storage/transmission security ([UC-1/MUC-1](software-security-assurance-cases.md#assurance-case-1-encrypted-credentials-during-transit)) |
| 7 | [CWE-346](https://cwe.mitre.org/data/definitions/346.html) | Base | Origin Validation Error | Federation origin verification ([UC-3/MUC-3](software-security-assurance-cases.md#assurance-case-3-keycloak-diminishes-database-misuse)) |
| 8 | [CWE-502](https://cwe.mitre.org/data/definitions/502.html) | Base | Deserialization of Untrusted Data | Token/session object deserialization ([UC-2/MUC-2](software-security-assurance-cases.md#assurance-case-2-keycloak-minimizes-undetected-changes-to-administrative-operations)) |

**Code Review Tool Selection:**

To develop a robust understanding of potential vulnerabilities, we began by obtaining a list of CWEs using Claude AI. This list underwent a review and validation to ensure its relevance to our misuse cases, assurance claims, and threat models. After several iterations, we finalized the refined list presented earlier.

Next, we turned our attention to automated code scanning tools. Our initial attempts involved setting up Fortify and SonarQube via Docker, but these proved challenging. Ultimately, we successfully executed scans using CodeQL, SonarCloud (both using GitHub Actions), and a local scan with PMD.

The CodeQL scan identified 32 issues, with 14 flagged as related to testing. This left 18 issues of interest:

- 2 Critical
- 12 High
- 4 Medium

The SonarCloud scan, which we opted to utilize for an additional layer of analysis, detected 59 issues, with 41 tied to testing. Excluding these, the remaining results included:

- 16 High
- 2 Medium

Furthermore, we conducted a local scan using PMD, which resulted in 15 security-related issues, all related to testing, and decided not to look any further.

[SonarCloud scan results](https://sonarcloud.io/summary/overall?id=mhenke_keycloak&branch=main)

## Part 2: Key Findings and Contributions

Most serious findings cluster around certificate validation (CWE-295), XML parsing vulnerabilities, and credential protection issues (CWE-522). The certificate validation issues appear in both core services and adapters.

- **CWE-295 (Improper Certificate Validation):**
  - Risk Level: Critical
  - Operational Impact: Potential for man-in-the-middle attacks in production environment
  - Findings: Multiple instances of insufficient certificate chain validation
- **CWE-522 (Insufficient Protection of Credentials):**
  - Risk Level: High
  - Operational Impact: Possible exposure of sensitive credentials
  - Findings: Hard-coded credentials and exposed secrets in configuration
- **XML Parsing Vulnerabilities:**
  - Risk Level: High
  - Operational Impact: Affects critical SAML functionality

Notable gaps - no direct findings related to:

- CWE-287 (Improper Authentication)
- CWE-613 (Insufficient Session Expiration)
- CWE-601 (URL Redirection)
- CWE-347 (Improper Crypto Signature Verification)
- CWE-346 (Origin Validation Error)
- CWE-502 (Deserialization of Untrusted Data)

Based on our thorough security analysis of Keycloak, our planned contributions center on enhancing core security components through the implementation of adaptive session timeout mechanisms based on user activity and risk levels, alongside real-time token status verification with rate limiting for validation requests. Our recommendations extend to federation provider security, implementing provider-specific security checks, while also addressing identified vulnerabilities related to CWE-295 and CWE-522 through detailed documentation updates and architectural improvements.

**What challenges did you expect before starting the code review?**

Before beginning the Keycloak code review, we anticipated challenges due to the Java-based codebase, as our team lacked extensive familiarity with Java. This limitation made it more difficult to understand the code structure, Keycloak’s architecture, and the interactions between its components.

Another significant challenge was selecting an appropriate scanning tool to analyze the code effectively. Damian recommended Fortify based on his prior experience, while Nick proposed incorporating PMD into the setup. Mike Henke experimented with SonarCloud and, after some trial and error, successfully configured it. Ultimately, we conducted successful scans using CodeQL with GitHub Actions, SonarCloud, and a local scan with PMD. The tool-related challenges extended beyond selection and setup, encompassing the learning curve for new analysis tools and the complexity of managing and integrating outputs from multiple scanners while filtering out false positives.

**How did your code review strategy attempt to address the anticipated challenges?**

Initially, we did not anticipate encountering such a high number of CWEs, particularly with a well-established and widely regarded tool like Keycloak. This unexpectedly large volume of vulnerabilities suggests that there may be underlying architectural issues within Keycloak itself that warrant closer examination.

**Document findings from a manual code review**

@Damian, please provide your manual code review findings here or remove.

## Reflection

This part of the project was the first time we had to actually dive into the code of the software, which can be daunting in and of itself. Combined with the holiday break (Thanksgiving) and the feelings that come with being almost done with the semester, we knew this would be a challenging section.

We worked on those hurdles by maintaining contact through our Discord chat as much as possible to develop our strategy over the holiday. We each delved into possible CWEs through various methods, including Keycloak documentation, our own project documentation thus far, and AI support (ChatGPT, Claude). After meeting with the professor, we had a clearer idea of our options on approaching this and developed our automated review strategy of the code.

Mike was particularly great at sending regular communication on Discord, and Damian helped us stay on task with the assignment requirements. Brian helped to create and review the markdown file and project boards, while Nick and Connor were instrumental in narrowing down the CWE lists that we each put together individually. Everyone contributed to the manual and automated code review as well as attending our ongoing team meetings on Discord.

This experience highlighted that our team's strength lies in our ability to adapt and support each other, especially when facing technical challenges or scheduling constraints. The holiday break, while challenging, actually helped us develop better asynchronous working methods that we can apply to future projects. Going forward, I think our team would schedule more evenly spaced milestones rather than larger deadlines, reduce time spent on setup issues by documenting successful configurations and environment settings before the scheduled check-in, and create clearer task divisions upfront to avoid overlap.
