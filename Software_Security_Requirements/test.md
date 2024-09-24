# User Interface (UI)
 - Interaction: Keycloak provides a web-based user interface for administrators to manage realms, users, groups, clients, and other configuration settings.
 - Enablers: Web browser, HTTP server.

# Overview
This assignment focuses on identifying external interactors, developing use and misuse case diagrams, and deriving security requirements. You will also assess the alignment of these requirements with features provided by an open-source software (OSS) project and reflect on any gaps identified.

# 1. Identify External Interactors
Define and document the external actors interacting with your system of interest.

# 2. Develop Use Case Diagrams
Create use case diagrams illustrating the interactions of actors with your system.
- Use the provided [Use Case Sample](Use_Case_Sample.drawio) file as a template for diagramming.
- Keep diagrams simple and straightforward.

# 3. Derive Security Requirements
For each use case, perform a security analysis to identify associated security requirements.
- Focus on misuses that are relevant to your environment and context.

# 4. Create Misuse Case Diagrams
Develop misuse case diagrams for each use case.
- Use the provided [Use-Misuse Case Sample](Use-Misuse_Case_Sample.drawio) file as a starting point.

# 5. Iterate and Refine
Iterate between use and misuse case analysis to elaborate additional security requirements.
- Ensure that all misuse cases are covered by relevant security mitigations.

# 6. Integrate Use and Misuse Cases
Integrate your use and misuse case diagrams into a comprehensive system view.

# 7. Build a List of Security Requirements
Build a list of functional security requirements derived from your misuse case analysis.

# 8. Assess Alignment with OSS Features
Compare the security requirements you derived with the advertised features of the OSS project.
- Document any gaps or misalignments.

# 9. Review OSS Project Documentation and Codebase
Review the OSS project's documentation and codebase to support your security analysis and requirements.

# 10. Summary of Findings
Provide a summary of your analysis, reflecting on the adequacy of the security features provided by the OSS project in relation to your derived requirements.

# Notes
## Use and Misuse Case Diagram Samples
- [Use Case Sample.drawio](Use_Case_Sample.drawio)
- [Use-Misuse Case Sample.drawio](Use-Misuse_Case_Sample.drawio)

## Diagramming Advice
- Use clear, concise notations as discussed in class.
- Ensure that each misuse case has a corresponding security function.
- Keep diagrams well-organized and uncluttered.

## AI-Assisted Diagramming Prompt
Example prompt to enhance your use and misuse case diagrams using AI:
```text
You are an expert software security requirement engineer. Your job is to suggest misuse cases for a particular use case diagram. Misuse cases need to be introduced in stages as back and forth analysis, introducing security countermeasures in response to each misuse case. Analyze the following use case:
An Actor is associated with the "Login" use case, which depends on "Password Hashing" and "Input Sanitization."
