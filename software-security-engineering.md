# Design Assignment

## Introduction
This document provides a detailed overview of our team's Software Assurance project for the CYBR8420-850 class (24FA). The project focuses on threat modeling and analysis, specifically examining the security of sensitive data access within an open-source software project. We have divided the project into several key parts, including the creation of Data Flow Diagrams (DFDs), threat modeling, and observations. Our team has worked collaboratively to ensure a comprehensive analysis and to propose improvements for future projects.

# Part 1: Threat Modeling
## Sensitive Data Access DFD

### Keycloak - Backend
![image](https://github.com/user-attachments/assets/e63efedd-5bc8-43df-9801-e30d38d3be73)

Threat Modeling Report: [Sensitive Data Access DFD](https://htmlpreview.github.io/?https://github.com/mhenke/CYBR8420-SoftwareAssurance-Proposal/blob/main/Data%20Flow%20Diagrams/Sensitive%20Data%20Access%20DFD.htm)

### Keycloak - Web App
![image](https://github.com/user-attachments/assets/3ac3e9d2-0e83-4071-932d-e389d47057b2)

Threat Modeling Report: [Web App DFD](https://htmlpreview.github.io/?https://github.com/mhenke/CYBR8420-SoftwareAssurance-Proposal/blob/main/Data%20Flow%20Diagrams/Keycloak%20Web%20App.htm)

# Part 2: Observations

## Design-Related Issues from DFD-based Threat Analysis
Through our DFD-based threat analysis of Keycloak, examining both backend authentication flows and web application user management, we identified several significant design-related issues requiring attention. The threat modeling revealed 28 potential threats, with 11 needing investigation and 16 having existing mitigations.

### High-Priority Design Gaps

1. **Backend Security Architecture**
- Elevation of privilege risks through inadequate backend client role mapping and scope configurations
- Remote code execution vulnerabilities due to insufficient token validation mechanisms
- Input validation weaknesses in the backend API design
These gaps are highlighted by multiple "Needs Investigation" findings in our threat analysis related to backend security configurations.

2. **Resource Management Design**
- No built-in rate limiting architecture for preventing denial of service attacks
- Insufficient session management controls in the base design
- Lack of automated resource consumption controls for database connections
Our DFD analysis specifically identified these as high-priority threats that could impact system availability.

3. **Authentication Flow Design**
- Session persistence architecture needs improvement for failover scenarios
- Event logging system lacks comprehensive coverage of backend operations
- LDAP federation security requires enhanced logging capabilities
These issues align with the threat modeling findings around information disclosure and authentication integrity.

### Existing Security Strengths
Keycloak's design includes several built-in security features that effectively mitigate many threats:
- CSRF protection through multiple security layers
- TLS encryption for authentication flows
- Role-based access control (RBAC)
- Input validation for authentication processes
- Secure database connections using SSL/TLS

The identified gaps primarily require configuration improvements and implementation of additional security controls rather than fundamental architectural changes to Keycloak's design.

### Alignment with Threat Analysis
Our observations directly align with the threat modeling results which identified:
- 11 threats needing investigation
- 16 threats with existing mitigations  
- Total of 28 potential threats across the system

The identified gaps map to the high-priority threats found in our DFD analysis, particularly around:
- Elevation of privilege risks through backend systems
- Denial of service vulnerabilities in resource management
- Information disclosure through insufficient logging
- Spoofing threats in federation services

While Keycloak has strong security foundations with built-in mitigations for many threats, these design gaps require attention for a fully secure implementation. The modular architecture allows for addressing these issues through proper configuration and implementation of additional security controls rather than requiring fundamental architectural changes.

## Reflection
Our team successfully completed the project through effective division of responsibilities and collaborative effort. Damien focused on refining our Data Flow Diagrams (DFD) and backend reporting, while Nick provided essential groundwork with the Microsoft Threat Modeling Tool and initial DFD drafts. Brian handled critical editing duties, and Mike maintained our documentation and organizational structure through markdown creation and workboard management. Connor contributed to the web application report, facilitated team communication, and assisted with the project summary.

The team encountered some challenges, primarily related to schedule coordination as the semester came to a close, and technical limitations prevented simultaneous editing of tool drafts. However, we successfully addressed these obstacles through regular check-ins and effective communication channels. Two productive Discord streams proved particularly valuable, allowing for real-time collaboration and idea generation for the reports.

Moving forward, the team identified several potential improvements for future projects. These include implementing real-time collaboration tools to facilitate simultaneous editing, establishing more structured communication protocols early in the project lifecycle, and developing a more comprehensive schedule planning system to account for end-of-semester time constraints. Despite the challenges faced, our team's ability to adapt and maintain clear communication channels ensured the successful completion of all project requirements.
