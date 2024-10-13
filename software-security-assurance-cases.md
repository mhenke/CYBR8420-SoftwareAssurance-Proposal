## Part 1

<!--- Nick --->
### Assurance Case 1: Encrypted Credentials During Transit
**Assurance Case:** SSL Implementation Minimizes Man-in-the-Middle Attack

![image](https://github.com/user-attachments/assets/704dbc07-1008-4689-a111-3adc051ce6c6)



<!--- End- Nick --->

<!--- Start- Mike --->
### Assurance Case 2: 



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




<!--- End - Brian --->


## Part 2

### Alignment of Evidence

#### Assurance Case 1: Encrypted Credentials During Transit
Keycloak allows for integration between multiple platforms, which commonly require credentials to be passed between endpoints. Credential theft through network eavesdropping is a risk that can be mitigated using a properly configured truststore. A truststore that enables encrypted SSL connections would greatly assist in protecting user credentials.

E1: System configuration enforces strong encryption protocols, effectively ensuring that any communication using the truststore is secure. This allows for regular auditing of system logs at it is essential to protect the integrity of the truststore. A compromised truststore undermines the reliability of SSL connections, potentially allowing rogue entities to impersonate endpoints and gather user credentials.

E2: Logs and monitoring confirm that invalid certificates are rejected. Using SSL certificates with weak encryption can facilitate credential interception; thus, SSL certificates must be acquired from trusted Certificate Authorities, adhering to industry-standard RSA 2048-bit or higher key lengths.

E3: Real-time certificate status-checking mechanisms are in place to ensure that only valid and current certificates are used, further safeguarding against unauthorized access.

E4: Configuration files and system policies enforce key management rules ensure that cryptographic keys are handled securely and comply with best practices.

Conclusion and Gaps: Implementing a truststore significantly enhances the security of a Keycloak instance, effectively eliminating man-in-the-middle attacks. The simplicity of adding a truststore means the potential for gaps is minimal, with none detected in this case. SSL handshakes are binary, established only if both parties agree. The key consideration is to utilize a high-bit certificate issued by a trusted authority, easily verifiable through modern browsers that warn against weak or untrusted certificates. Additional responsibilities fall on the Keycloak administrator to regularly audit changes to the truststore.

#### Assurance Case 2:

#### Assurance Case 3:

#### Assurance Case 4:

#### Assurance Case 5:

Keycloak itsellf shows an ongoing, regular interaction between the open source community and updates with clear notation on update coverage.  Keycloak provides detailed documentation on client certificate authentication and configurations regarding user identity mapping, which helps ensure that unauthorized users do not gain access to IDP configurations.  Documentation available also highlights specific vulnerabilities, such as a privilege escalation flaw in the token exchange feature and patching details for effected versions.  This documentation provides solid evidence about security patches and vulnerability handling in Keycloak.  However, there are some gaps.  For example, Keycloak mentions support for data protection features, including access control and user federation settings, but additional documentation would be needed to show explicit measures regarding GDPR security requirements.  Specific tests or audits may also be needed to prove Keycloak’s compliance with privacy and security laws.  Also, while the documentation covers authentication and access control, additional steps like security audits or code reviews would help collect robust evidence on preventing unauthorized access, specifically to identify provider configuration settings.

### Link to project board: 

### Reflection on work:


