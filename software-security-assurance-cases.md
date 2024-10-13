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
Keycloak allows platform integration, necessitating the secure passage of credentials between endpoints. To prevent credential theft via network eavesdropping, a properly configured truststore is essential, as it enables encrypted SSL connections to protect user credentials in transit.

Regular auditing of system logs is critical to ensure the truststore remains uncompromised. System configurations enforce strong encryption protocols (E1), and real-time certificate status-checking mechanisms are in place (E3). SSL security becomes unreliable if the truststore becomes compromised, allowing a rogue entity to impersonate endpoints and steal credentials. Logs and monitoring confirm that invalid certificates are rejected (E2), further strengthening security. Additionally, weak or self-signed certificates increase the risk of interception, which is mitigated by obtaining SSL certificates from trusted Certificate Authorities (CAs) and ensuring that configuration files and system policies enforce robust key management rules (E4).

Implementing a truststore significantly enhances Keycloak’s security against man-in-the-middle attacks. By ensuring high-bit certificates and regular audits, risks are minimized, and no significant gaps were detected in this approach.

#### Assurance Case 2:

#### Assurance Case 3:

#### Assurance Case 4:

#### Assurance Case 5:

Keycloak itsellf shows an ongoing, regular interaction between the open source community and updates with clear notation on update coverage.  Keycloak provides detailed documentation on client certificate authentication and configurations regarding user identity mapping, which helps ensure that unauthorized users do not gain access to IDP configurations.  Documentation available also highlights specific vulnerabilities, such as a privilege escalation flaw in the token exchange feature and patching details for effected versions.  This documentation provides solid evidence about security patches and vulnerability handling in Keycloak.  However, there are some gaps.  For example, Keycloak mentions support for data protection features, including access control and user federation settings, but additional documentation would be needed to show explicit measures regarding GDPR security requirements.  Specific tests or audits may also be needed to prove Keycloak’s compliance with privacy and security laws.  Also, while the documentation covers authentication and access control, additional steps like security audits or code reviews would help collect robust evidence on preventing unauthorized access, specifically to identify provider configuration settings.

### Link to project board: 

### Reflection on work:


