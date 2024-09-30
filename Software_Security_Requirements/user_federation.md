# Use Case 3: User Federation

# Overview

Keycloak can federate identities by integrating with external Identity Providers (IDPs), which allows users to authenticate using existing credentials from external systems rather than creating or mainitaining a separate user account.

# Use Case - Authenticate with External IDP

In this scenario, a user is requesting access to a Keycloak protected resource.  The request prompts the software to redirect the user to an external IDP (such as Google) for authentication and authorization for access.  

# Diagram

![Authenticate with External IDP drawio](https://github.com/user-attachments/assets/27448592-ac96-4201-8fc2-c942d2dff8a6)

# Misuse Case - Token Theft

One way that a motivated threat actor, such as a disgruntled former employee, can attack this software is by Token Theft.  Token Theft is a known threat for an identity management system.  In the process of authenticating a user, tokens are exchanged to verify that Keycloak is actually communicating with the external IDP.  A threat actor could intercept those tokens, possibly through a man in the middle attack, to impersonate one or the other and infilitrate the system, gather information from the user, or seek other negative end results.  

# Diagram

![image](https://github.com/user-attachments/assets/a8677924-e870-4d02-8112-220270b77113)

# Security Requirements
- Token Expiration and Refresh can minimize the window of exposure or opportunity
- Token Revocation can allow administrators to revoke tokens and render stolen tokens useless
- Client Configuration can allow the client to control access and ensure tokens are only issued to authorized clients
- HTTPS Enforcement ensures tokens are transmitted securely between clients and servers

# Use Case - Transport Layer Security encryption
![Use Case - Transport Layer Security Encryption Authenticate with External IDP drawio](https://github.com/user-attachments/assets/794258a8-27e1-462d-8b45-a0c551a0b19d)

# Mis Use Case - Brute Force Attacker
![image](https://github.com/user-attachments/assets/0af31e1c-96a7-4f31-912f-bfd6e85c5b77)

# Use Case - Rate Limiting and Account Lockout
![image](https://github.com/user-attachments/assets/3287e225-99d2-4004-a46a-74c597a89acd)

