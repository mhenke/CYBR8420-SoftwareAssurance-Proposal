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

Next, we turned our attention to automated code scanning tools. Our initial attempts involved setting up Fortify and SonarQube via Docker, but these proved challenging. Ultimately, we successfully executed scans using CodeQL with GitHub Actions, SonarCloud, and a local scan with PMD.

The CodeQL scan identified 32 issues, with 14 flagged as related to testing. This left 18 issues of interest:

    -2 Critical
    -12 High
    -4 Medium

The SonarCloud scan we opted to utilize for an additional layer of analysis detected 59 issues, with 41 tied to testing. Excluding these, the remaining results included:

    -16 High
    -2 Medium

Furthermore, we conducted a local scan using PMD, which resulted in 15 security-related issues with all being related to testing and decided not to look any further. 

[SonarCloud scan results](https://sonarcloud.io/summary/overall?id=mhenke_keycloak&branch=main)

## Part 2: Key Findings and Contributions

Most serious findings cluster around certificate validation (CWE-295), XML parsing vulnerabilities, and credential protection issues (CWE-522). The certificate validation issues appear in both core services and adapters, while XML parsing vulnerabilities affect critical SAML functionality. Credential protection findings include hard-coded credentials and exposed secrets.

Notable gaps - no direct findings related to:

- CWE-287 (Improper Authentication)
- CWE-613 (Insufficient Session Expiration)
- CWE-601 (URL Redirection)
- CWE-347 (Improper Crypto Signature Verification)
- CWE-346 (Origin Validation Error)
- CWE-502 (Deserialization of Untrusted Data)

**What challenges did you expect before starting the code review?** (Damian)

Before starting the code review for Keycloak, one of the anticipated challenges was that the codebase is Java-based, and our team lacked extensive familiarity with Java. This made it more difficult to understand the code structure, Keycloak’s architecture, and its interaction between components.

Another challenge was identifying the appropriate scanning tool to analyze the code effectively. Damian suggested using Fortify based on his work experience, while Nick proposed using Docker as part of the setup. Mike Henke tried SonarCloud, and after some trial and error, he was able to configure it successfully. Ultimately, we decided to use SonarCloud for our code review due to its compatibility and ease of integration with the project.


**How did your code review strategy attempt to address the anticipated challenges?** (Damian)

**Document findings from a manual code review** (Damian)

## Reflection

This part of the project was the first time we had to actually dive into the code of the software, which can be daunting in and of itself. Combined with the holiday break (Thanksgiving) and the feelings that come with being almost done with the semester, we knew this would be a challenging section. We worked on those hurdles by maintaining contact through our Discord chat as much as possible to develop our strategy over the holiday. We each delved into possible CWEs through various methods including Keycloak documentation, our own project documentation thus far, and AI support (ChatGPT, Claude). After meeting with the professor, we had a clearer idea of our options on approaching this and developed our automated review strategy of the code. Mike was particularly great at sending regular communication on Discord and Damian helped us stay on task with the assignment requirements. Brian helped to create and review the markdown file and project boards while Nick and Connor were instrumental in narrowing down the CWE lists that we each put together individually. Everyone contributed to the manual and automated code review as well as attending our ongoing team meetings on Discord.
