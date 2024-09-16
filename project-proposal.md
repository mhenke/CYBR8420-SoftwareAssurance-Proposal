# Project Proposal
## 1. OSS project description
- **Project Name:** [Keycloak](https://github.com/keycloak/keycloak)
- **What is it:** Keycloak is an open-source identity and access management platform aimed at securing applications and services. It provides SSO and integrates with modern identity protocols.
- **Project Details:**
  - Contributors (30 days as of 9/13/2024)
    - Outside Contributors: 68
  - Activity (How active is the project? Regular updates?)
    - High activity
    - Frequent updates and releases, including security patches and new features.
  - Use (Who uses this software? How popular is it?)
    - Keycloak is widely used by enterprises and developers who need secure authentication and authorization in their applications. It is popular in cloud-native applications and microservices architectures.
    - Keycloak is used by a variety of organizations, from startups to large enterprises, including Red Hat and other cloud providers.
  - Programming languages and platforms:
    - [Java](https://www.oracle.com/java/): The primary language for Keycloak's development.
    - [WildFly](https://www.wildfly.org): The application server used by Keycloak.
    - [Docker](https://www.docker.com): Commonly used for containerizing Keycloak instances.
    - [MySQL, PostgreSQL](https://www.mysql.com) & [PostgreSQL](https://www.postgresql.org): Common databases used with Keycloak.
    - [LDAP](https://ldap.com) & [Active Directory](https://docs.microsoft.com/en-us/windows-server/identity/active-directory): External user management systems Keycloak integrates with.
  - Documentation sources (e.g., GitHub, official website).
    - [Keycloak Documentation](https://www.keycloak.org/documentation)
    - [Keycloak GitHub repository](https://github.com/keycloak/keycloak)

## 2. Hypothetical Operational Environment
Keycloak serves a diverse range of corporate environment, from small to large and complex organizations, it can provide robust means of identity and access management solutions. Keycloak access control is considered an integral part, especially by large enterprises, in handling their complex security requirements. These organizations often have several departments that make them up, each with different roles, each having different access levels from general staff to high levels of executives. Keycloak allows these organizations to implements access control rules; thus, permissions can be granted for each selected role or even for each particular user. This ensures sensitive data and resources will be available only to those who actually need them.

The handling of identities within a big corporate environment can be extremely complex. In the case of Keycloak, this will come easier with centralized management of authentication and authorization. Centralization in this context involves the capability of the administrators to define and enforce security policies across an organization from a single point, therefor minimizing any  inconsistency's and potential vulnerabilities. Role-based access contol (RBAC) along with multi-factor authentication (MFA) can be set up within the environment to ensure users have the access they need and also provide an extra layer or security.
![image](https://github.com/user-attachments/assets/8ffcd9d6-e125-4c6b-a5fc-dce287b89025)


- **Security Expectations:** Discuss the security needs and expectations in this environment.

## 3. Security Needss, Threats, and Features
- Security Features:
-     Single Sign-On, Multifactor Authentication, OAuth2 and Open ID Connect, RBAC, Token-Based Authentication, User Federation
-     Implements security standards: SAML 2.0 and X.509 Certificate Authentication
- **Analysis:** Evaluate how well these features address the security threats identified.
- Threats**
  
****Perceived Threats:** List the security threats perceived by users of the software in the operational environment.

Unauthorized Access - attackers gain unauthorized access to sensitive information by bypassing authentication and authorization mechanisms.

Brute Force Attacks - attackers attempt to guess user credentials.

Sessions Hijacking - Hijack authorized users session.


**Risk Assessment:** Evaluate the significance of each threat and its impact on security.

Unauthorized access - is a concern in identity and control management systems like Keyclock. Vulnerabilities, misconfigurations or poor password standards can increase the likelihood of exploitation. If an unauthorized user gains access, sensitive data and systmes can be compromised which lead to data breaches and compliance violations.
(Likelihood - Moderate)
(Impact - Critical)


Brute force attacks - are common on login pages, especially when users are able to access a system remotely. Attackers usually target weak and reused passwords. Proper use of MFA and account lockout policies can minimize the impact of a brute force attack from occuring. 
(Likelihood - High)
(Impact - Moderate)

Sessions Hijacking -
Session token theft is a threat to the system if an unauthorized users gains access to an "authorized user" session. This could lead to unauthorized actions to be performed. 
(Likelihood - Moderate)
(Impact: High)


## 4. Motivation
 The team chose a project to work on that was a combination of challenge, popularity, and familiarity.  Keycloak is an open-source identity and access management platform that is widely used by those needing authentication and authorization in their applications, from startups and large enterprises to developers.  The project has a 10/10 OpenSSF (Open Source Security Foundation or OSSF) score, implying it is very safe to use and passes their security checks, but also has a low (15%) Contributor Confidence score.  This low confidence score implies that it can be an intimidating project to work on, a challenge.  The project is popular, average of 23 contributors per week and 68 contributors in the last 30 days, with about 327 issues opened and 415 closed in the last 30 days.  As an Identity and Access Management (IAM) solution, it provides an opportunity for federated, secure access, something much in demand and use with the depth of login management needed for any single user, let alone across an organization.  Keycloak also uses Java, a well-known programming language, Docker, commonly used for containerizing, and MySQL, a common database language, allowing those of us with various levels of experience to come together on this project’s work.  We are motivated to work towards Core Infrastructure Initiative (CII) Best Practices recognition, which is a way for OSS projects to show they do follow best practices and aim to produce e higher-quality secure software, as well as explore and harden its vulnerabilities.  

## 5. License and Contributor Agreements
### Summary of License

https://www.apache.org/licenses/LICENSE-2.0

The Apache License 2.0 grants you the freedom to use, modify, and adapt the Keycloak codebase as you see fit. You can integrate the code into your own products, whether they are open-source or proprietary, and you can also sell products that include the code. The license indicates that there are no warranties or liabilities related to the code, so the original authors are not responsible for any problems or damages arising from your use or alterations. Although you can apply other licenses to your modifications or extensions, the original Keycloak code will always remain under the Apache License.

- Definitions: Establishes the legal meanings for terms like "You" (the user of the code), "Licensor" (the copyright holder), "Work" (the software being licensed), and "Contributor." Notably, "You" is the entity utilizing the license permissions, and "Work" refers to the software made available under the license.

- Grant of Copyright License: Grants you the right to use, reproduce, prepare derivative works of, publicly display, publicly perform, sublicense, and distribute copies of the original Keycloak software.

- Grant of Patent License: Allows you to use any patents the Licensor holds on the Work. However, if you initiate a lawsuit claiming that the Work infringes on a patent, this license is terminated.

- Redistribution: You can distribute the Work, but you must include a copy of the Apache License in any distribution of the original code, clearly indicate which parts are original and which are your modifications, and retain the source form of any changes you distribute. If there is a "NOTICE" file in the Work, you must include this file with the notices when you distribute the Work.

- Submission of Contributions: Unless otherwise stated, any contributions you make to the project are automatically licensed under the Apache License.

- Trademarks: The license does not grant permission to use the Licensor's trademarks.

- Disclaimer of Warranty: The software is provided "as is," without any express or implied warranties.

- Limitation of Liability: Contributors and the Licensor are not liable for any damages, including direct, indirect, incidental, special, exemplary, or consequential damages arising from the use of the software.

- Accepting Warranty or Additional Liability: If you offer warranties or assume additional liabilities for the Work, you are solely responsible for those warranties or liabilities.
    
- **Contributor Agreements:** Discuss the procedures for making contributions, including any contributor agreements.

## 6. Security History
**Vulnerabilities and Fixes:**

CVE-2020-1717 - Flaw that allows a Cross-Site Request Forgery (CSRF) attack that could potentially lead to privilege escalation.

CVE-2021-36296 - Impact to the SAML broker that could potentially allow attackers to bypass authentication.
  
**Security Improvements:** Discuss any security feature additions, removals, or engineering decisions over time.
Keycloak has added features like MFA (Multi-Factor Authentication), authentication mechanisms, and a token introspection to increate security. Additional security features are made to maiaint compliance with standards such as OpenID Connect, OAuth 2.0 and SAML 2.0. There have also been efforts to harden Keycloak's defense against common web vulnerabilities like XSS and CSRF.

Security has always been prioritized with regular updates focusong on strenghtening areas such as Single Sign-on (SSO) protocols and OAuth/OIDC implementations. There's also been continuous work to ensure that encryption standards and authentication mechanisms are robust. 

## 7. Project Planning and Reflection
Overall team planning and Individual Contribution

  During the introduction to this assignment, it was very clear that collaboration and open communication were going to play a crucial role in ensuring this semester's initiative. Our team briefly experienced upfront challenges with deciding which project to pursue and how that played into everyone's experience. It led to minor role distribution confusion. To resolve these issues, our team scheduled a meeting to discuss potential projects, scheduled a second meeting once all team members were able to provide example proposals, and then finally we created a github project with tasks organized out across team members. A simple poll helped finalize the selection process in a fair way thanks to one of our workflow geniuses! In addition, it seems that all team members have taken leadership roles in ways to make the workload easier for our peers. Regular check-ins, a Discord communication channel, and organized taskloads were all implemented to help us tack progress. Our team has used the organization and communication channels to move tasks along way more efficiently. Moving forward, the group plans to prioritize upfront planning, foster open communication, and keep building a strong ethos of team collaboration.
