# Code Analysis

## Introduction

Ensuring proper software assurance begins with analyzing potential attack scenarios and identifying the requirements to secure the software and validate its functionality. With these threats addressed and security measures planned, we shift our focus to source code review. This step determines whether the current code meets assurance standards or requires modifications to address security gaps. Our approach integrates automated scanning tools, manual reviews, and cross-referencing findings against identified threats and vulnerabilities.

CWE Checklist:
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

Our team obtained a list of CWEs from Claude AI. We verified the list was appropriate and valid for our misuse cases, assurance claims, and threat models. We iterated through this several times, finalizing with our list above.

Then we struggled to get a code scanner working, trying Fortify, SonarQube, GitHub CodeQL, and PMD. We finally were able to obtain scans using SonarCloud and CodeQL.

We utilized SonarCloud, a widely-used cloud-based static code analysis tool, to perform an automated scan on Keycloak. This scan was specifically aimed at identifying Common Weakness Enumerations (CWEs), which represent a standard list of common software vulnerabilities and weaknesses. Utilizing this tool allowed us to identify vulnerabilities such as input validation errors, authentication flaws, and insecure configurations, which are often associated with CWEs.

## Reflection

This part of the project was the first time we had to actually dive into the code of the software, which can be daunting in and of itself. Combined with the holiday break (Thanksgiving) and the feelings that come with being almost done with the semester, we knew this would be a challenging section. We worked on those hurdles by maintaining contact through our Discord chat as much as possible to develop our strategy over the holiday. We each delved into possible CWEs through various methods including Keycloak documentation, our own project documentation thus far, and AI support (ChatGPT, Claude). After meeting with the professor, we had a clearer idea of our options on approaching this and developed our automated review strategy of the code. Mike was particularly great at sending regular communication on Discord and Damian helped us stay on task with the assignment requirements. Brian helped to create and review the markdown file and project boards while Nick and Connor were instrumental in narrowing down the CWE lists that we each put together individually. Everyone contributed to the manual and automated code review as well as attending our ongoing team meetings on Discord.
