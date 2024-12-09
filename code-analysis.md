# Code Analysis

## Introduction

Ensuring proper software assurance begins with analyzing potential attack scenarios and identifying the requirements to secure the software and validate its functionality. With these threats addressed and security measures planned, we shift our focus to source code review. This step determines whether the current code meets assurance standards or requires modifications to address security gaps. Our approach integrates automated scanning tools, manual reviews, and cross-referencing findings against identified threats and vulnerabilities.

CWE Checklist:
| Serial | CWE | Type | Name | Focus |
|:-------|:------|:-------|:------------------------------------------|:-------------------------------------------|
| 1 | CWE-287 | Base | Improper Authentication | Verify OAuth/OIDC authentication flows (UC-1/MUC-1) |
| 2 | CWE-613 | Base | Insufficient Session Expiration | Token lifespan and refresh token handling (UC-2/MUC-2) |
| 3 | CWE-295 | Base | Improper Certificate Validation | IDP certificate validation routines (UC-3/MUC-3) |
| 4 | CWE-601 | Base | URL Redirection | OAuth redirect validation logic (UC-1/MUC-1) |
| 5 | CWE-347 | Base | Improper Crypto Signature Verification | JWT signature validation code (UC-2/MUC-2) |
| 6 | CWE-522 | Base | Insufficient Protection of Credentials | Credential storage/transmission security (UC-1/MUC-1) |
| 7 | CWE-346 | Base | Origin Validation Error | Federation origin verification (UC-3/MUC-3) |
| 8 | CWE-502 | Base | Deserialization of Untrusted Data | Token/session object deserialization (UC-2/MUC-2) |

**Code Review Tool Selection:**

Our team obtained a list of CWEs from a database and we found x vulnerabilities.

We utilized SonarCloud, a widely-used cloud-based static code analysis tool, to perform an automated scan on Keycloak. This scan was specifically aimed at identifying Common Weakness Enumerations (CWEs), which represent a standard list of common software vulnerabilities and weaknesses. Utilizing this tool allowed us to identify vulnerabilites such as input validation errors, authentication flaws, and insecure configurations, which are often associated with CWEs.

## Reflection

This part of the project was the first time we had to actually dive into the code of the software, which can be daunting in and of itself. Combined with the holiday break (Thanksgiving) and the feelings that come with being almost done with the semester, we knew this would be a challenging section. We worked on those hurdles by maintaining contact through our Discord chat as much as possible to develop our strategy over the holiday. We each delved into possible CWEs through various methods including KeyCloak documentation, our own project documentation thus far, and AI support (ChatGPT, Claude). After meeting with the professor, we had a more clear idea of our options on approaching this and developed our automated review strategy of the code. Mike was particularly great at sending regular communication on Discord and Damian helped us stay on task to the assignment requirements. Brian helped to create and review the markdown file and project boards while Nick and Connor were instrumental in narrowing down the CWE lists that we each put together individually. Everyone contributed to the manual and automated code review as well as attending our ongoing team meetings on discord.
