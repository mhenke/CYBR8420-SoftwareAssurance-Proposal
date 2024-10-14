## Part 1

<!--- Nick --->
### Assurance Case 1: Encrypted Credentials During Transit
**Assurance Case:** SSL Implementation Minimizes Man-in-the-Middle Attack

![image](https://github.com/user-attachments/assets/704dbc07-1008-4689-a111-3adc051ce6c6)

Keycloak allows for integration between multiple platforms, which commonly require credentials to be passed between endpoints. Credential theft through network eavesdropping is a risk that can be mitigated using a properly configured truststore. A truststore that enables encrypted SSL connections would greatly assist in protecting user credentials.

E1: System configuration enforces strong encryption protocols, effectively ensuring that any communication using the truststore is secure. This allows for regular auditing of system logs at it is essential to protect the integrity of the truststore. A compromised truststore undermines the reliability of SSL connections, potentially allowing rogue entities to impersonate endpoints and gather user credentials.

E2: Logs and monitoring confirm that invalid certificates are rejected. Using SSL certificates with weak encryption can facilitate credential interception; thus, SSL certificates must be acquired from trusted Certificate Authorities, adhering to industry-standard RSA 2048-bit or higher key lengths.

E3: Real-time certificate status-checking mechanisms are in place to ensure that only valid and current certificates are used, further safeguarding against unauthorized access.

E4: Configuration files and system policies enforce key management rules ensure that cryptographic keys are handled securely and comply with best practices.

E5: Legacy system upgrade documentation or security policies enforcing the restriction, ensuring the implementation is up to date with the most recent security updates that are provided.

Conclusion and Gaps: Implementing a truststore significantly enhances the security of a Keycloak instance, effectively eliminating man-in-the-middle attacks. The simplicity of adding a truststore means the potential for gaps is minimal, with none detected in this case. SSL handshakes are binary, established only if both parties agree. The key consideration is to utilize a high-bit certificate issued by a trusted authority, easily verifiable through modern browsers that warn against weak or untrusted certificates. Additional responsibilities fall on the Keycloak administrator to regularly audit changes to the truststore.

Implementing a truststore significantly enhances the security of a Keycloak instance, effectively eliminating man-in-the-middle attacks. The simplicity of adding a truststore means the potential for gaps is minimal, with none detected in this case. SSL handshakes are binary, established only if both parties agree. The key consideration is to utilize a high-bit certificate issued by a trusted authority, easily verifiable through modern browsers that warn against weak or untrusted certificates. Additional responsibilities fall on the Keycloak administrator to regularly audit changes to the truststore.


<!--- End- Nick --->

<!--- Start- Mike --->
### Assurance Case 2:  Keycloak minimizes undetected changes to administrative operations
![image](/Assurance_Cases/web_console/undetected-changes.png)

Keycloak's security framework is designed to minimize undetected changes to administrative operations through strong authentication, comprehensive audit logging, and strict authorization controls.

E1: Dynamic Application Security Testing
This evidence relates to testing the authentication system for vulnerabilities through active probing and analysis of the system while it's running. 

E2: Static Application Security Testing
This involves analyzing the source code or compiled version of the authentication system without executing it, to find potential security vulnerabilities. 

E3: Log integrity checks and access controls
This evidence pertains to the audit logging system, ensuring that logs cannot be tampered with and that access to logs is properly controlled. 

E4: Documentation on master realm access control mechanisms

E5: Configuration of dedicated realm admin consoles

E6: Implementation of fine-grained admin permissions

The above three pieces of evidence relate to the authorization controls in Keycloak, specifically how access is managed for administrative operations across different realms and with granular permissions.

Conclusion and Gaps: After review of Keycloak documentation, the following partial gaps and observations were identified:

- Strong authentication mechanisms (C2):
    Keycloak provides robust [authentication features](https://www.keycloak.org/docs/latest/server_admin/#configuring-authentication_server_administration_guide), including multi-factor authentication, social login, and customizable password policies. Evidence E1 (Dynamic Application Security Testing) and E2 (Static Application Security Testing) are not explicitly mentioned in Keycloak's documentation, representing a potential gap in publicly available security assurance information. - Partial Gap
- Comprehensive audit logging (C3):
    Keycloak offers extensive auditing capabilities for both user and [admin events](https://www.keycloak.org/docs/latest/server_admin/#auditing-admin-events_).
    Partial Gap: While audit logging is comprehensive, there's no explicit mention of log integrity checks (E2) in the available documentation. - Partial Gap
- Proper authorization controls (C4):
    Keycloak implements fine-grained authorization policies for [admin permissions](https://www.keycloak.org/docs/latest/server_admin/#_admin_permissions) - No Gap

 Overall, while Keycloak provides robust security features that align with the claim of minimizing undetected changes to administrative operations, there are some gaps in the publicly available evidence, particularly regarding security testing results and log integrity checks.   

<!--- End- Mike --->

<!--- Start - Connor --->
### Assurance Case 3:



<!--- End - Connor --->


<!--- Start - Damian --->
### Assurance Case 4: 



<!--- End - Damian --->


<!--- Start - Brian --->
### Assurance Case 5: 
![image](https://github.com/user-attachments/assets/bb9d4a4e-216a-434f-a210-923ca81b40f6)


Keycloak itsellf shows an ongoing, regular interaction between the open source community and updates with clear notation on update coverage.  Keycloak provides detailed documentation on client certificate authentication and configurations regarding user identity mapping, which helps ensure that unauthorized users do not gain access to IDP configurations.  Documentation available also highlights specific vulnerabilities, such as a privilege escalation flaw in the token exchange feature and patching details for effected versions.  This documentation provides solid evidence about security patches and vulnerability handling in Keycloak.  However, there are some gaps.  For example, Keycloak mentions support for data protection features, including access control and user federation settings, but additional documentation would be needed to show explicit measures regarding GDPR security requirements.  Specific tests or audits may also be needed to prove Keycloak’s compliance with privacy and security laws.  Also, while the documentation covers authentication and access control, additional steps like security audits or code reviews would help collect robust evidence on preventing unauthorized access, specifically to identify provider configuration settings.

<!--- End - Brian --->


## Part 2

### Link to project board: 
[Project board](https://github.com/users/mhenke/projects/7)

### Reflection on work:
The team has started to gel well, and our communication in Discord has been effective. However, we fell short with maintaining our team meeting schedule after our Wednesday Dr. Gandhi  meeting along with our typical Friday and Sunday evening meetings. Despite this, we each shared our top-level claims in Discord prior to the Wednesday meeting, which helped us prepare. After the meeting with the professor, we were able to reassess and refine our top-level claims for the project. Following this, each team member took responsibility for a specific claim, created a corresponding diagram, and identified gaps between the claims and the features offered by Keycloak. We also made improvements in our use of a markdown assignment template, ensuring better organization and structure in our submission.

