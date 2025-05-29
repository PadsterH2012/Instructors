# Module 1: Research Phase (MANDATORY)

## CRITICAL: Agent Execution Rules for This Module

**MANDATORY READING REQUIREMENT**:
- Agents MUST read the project_plan.txt file (located at ../project_input/project_plan.txt relative to this module) BEFORE starting any research
- Agents MUST NOT use any past knowledge about Python, Docker, web development, or hair salon applications
- ALL technology decisions MUST be based ONLY on current research using the specified tools

**MANDATORY TOOL USAGE RULES**:
- READ ../../project_working_files/system_info.env for current date context before starting research
- ALL technology research MUST use brave_web_search with current date context from system_info.env
- Include CURRENT_YEAR from system_info.env in all search queries for latest information
- ALL component compatibility research MUST use Context7 tools (resolve-library-id and get-library-docs)
- NO assumptions about technology compatibility without explicit Context7 verification
- ALL recommendations MUST include source URLs and research dates
- NO reliance on general knowledge about frameworks, libraries, or deployment practices

**STATUS UPDATE REQUIREMENT**:
- Update ../../project_working_files/status.md to IN_PROGRESS before starting
- Update ../../project_working_files/status.md to COMPLETED after all deliverables are created and validated

**TASK BREAKDOWN REQUIREMENT**:
- Research tasks are typically complex and MUST be organized into logical components
- Create task breakdown files in ../../project_working_files/working_files/tasks/ for complex research
- Work on one component at a time, focusing on quality and completeness
- Update task breakdown progress after each component completion

**DEBUG LOGGING REQUIREMENT** (If debug mode enabled):
- Log all research reasoning and decision-making to ../../project_working_files/debug_log.md
- Document every brave_web_search query and rationale
- Record every Context7 tool usage with library IDs and reasoning
- Log validation steps and checkpoint results
- Flag any potential assumptions or use of past knowledge

---

## Overview
This module contains mandatory research directives that must be completed before any documentation development begins. All research findings will form the foundation for subsequent modules.

## Prerequisites
- Access to brave_web_search tool
- Access to resolve-library-id and get-library-docs Context7 tools
- Project plan file (../project_input/project_plan.txt) has been read and analyzed
- **Module 0 (Initial Setup) must be COMPLETED** - verify in ../../project_working_files/status.md
- System date context file (../../project_working_files/system_info.env) exists with current date information
- Isolated directory structure exists (created by Module 0):
  - "../../project_working_files/working_files/research/" folder for research outputs
  - "../../project_working_files/working_files/tasks/" folder for task breakdown files
  - "../../project_working_files/docs/" folder for final documentation
- Status file (../../project_working_files/status.md) exists and will be updated to IN_PROGRESS for this module

## Execution Directives

### 1.1 Technology Stack Research

Execute the following research steps:

1. **Current Best Practices Research**
   - Read ../../project_working_files/system_info.env to get current date context
   - Use brave_web_search to research current best practices for the identified technology domain
   - Include CURRENT_YEAR from system_info.env in search queries (e.g., "best practices [technology domain] [CURRENT_YEAR] latest versions")
   - Search for "current technology stack [project type] production ready [CURRENT_YEAR]"
   - Reference RESEARCH_CONTEXT from system_info.env for appropriate temporal scope
   - Document all findings with source URLs and dates
   - **DEBUG LOGGING**: If debug mode enabled, log each search query, reasoning for the query, and summary of results to ../debug_log.md

2. **Documentation Requirements**
   - Create research_findings.md in the ../../project_working_files/working_files/research/ folder
   - Include comprehensive technology research with:
     - Technology domain analysis based ONLY on project_plan.txt requirements
     - Current best practices summary from brave_web_search results
     - Source references with URLs and dates
     - Recommendations for technology adoption with research justification

### 1.2 Component Compatibility Research

Execute the following compatibility research steps:

1. **Component Identification**
   - Extract all major technology components from the project plan
   - Create a comprehensive list of components requiring compatibility analysis

2. **Context7 Research Process**
   - Use resolve-library-id and get-library-docs Context7 tools to research optimal component compatibility
   - For each major technology component identified in the project plan:
     - Research latest stable versions
     - Identify compatibility matrices between components
     - Document integration best practices
     - Verify security and performance considerations
   - **DEBUG LOGGING**: If debug mode enabled, log each library ID resolution, reasoning for selection, and key findings from documentation to ../debug_log.md

3. **Documentation Requirements**
   - Document findings in component_compatibility.md in the ../../project_working_files/working_files/research/ folder
   - Include:
     - Complete component list with versions (from Context7 research only)
     - Compatibility matrix based on Context7 documentation
     - Integration best practices for each component pair
     - Security considerations for each component
     - Performance optimization recommendations
     - Source references from Context7 research with library IDs used

### 1.3 Industry Standards Research

Execute the following industry standards research steps:

1. **Architecture Patterns Research**
   - Read ../../project_working_files/system_info.env for current date context
   - Use brave_web_search to research industry standards for the project domain
   - Search for "[project domain] architecture patterns [CURRENT_YEAR]" using date from system_info.env
   - Research current architectural best practices
   - Identify recommended design patterns for the project type

2. **Deployment and Security Research**
   - Search for "production deployment best practices [technology stack] [CURRENT_YEAR]" using date from system_info.env
   - Search for "security best practices [technology stack] [CURRENT_YEAR]" using date from system_info.env
   - Research containerization standards
   - Research CI/CD pipeline best practices

3. **Documentation Requirements**
   - Document findings in industry_standards.md in the ../../project_working_files/working_files/research/ folder
   - Include:
     - Architecture patterns and design principles (from brave_web_search only)
     - Deployment and infrastructure standards
     - Security standards and best practices
     - Source references with URLs and dates from research

### 1.4 Research Validation

Execute the following validation steps:

1. **Cross-Reference Analysis**
   - Cross-reference findings from web search and Context7 research
   - Identify any conflicts or inconsistencies in recommendations
   - Resolve conflicts by prioritizing more recent and authoritative sources

2. **Technology Stack Validation**
   - Create a validated technology recommendation in validated_tech_stack.md in the ../../project_working_files/working_files/research/ folder
   - This validated stack must be used as the foundation for all subsequent documentation
   - Include:
     - Final technology stack recommendations based ONLY on research conducted
     - Justification for each technology choice with source references
     - Compatibility verification results from Context7 research
     - Risk assessment for each technology based on research findings

### 1.5 Module Completion and Git Integration

Execute the following module completion steps:

1. **Update Module 1 Status to COMPLETED**
   - Update ../../project_working_files/status.md to mark Module 1 as COMPLETED
   - Add timestamp and completion notes
   - Add entry to the Status Update History section

2. **Git Commit for Module 1 Completion**
   - **PRE-COMMIT VALIDATION**: Verify all module deliverables are complete and in correct locations
   - **CHECK STATUS**: Run `git status` to review all changes made during Module 1
   - **STAGE FILES**: Add all relevant files created during Module 1 (respecting .gitignore)
   - **COMMIT**: Create commit with message:
     ```
     "Complete Module 1: Research Phase - Technology stack validation

     - Technology research findings documented with current best practices
     - Component compatibility analysis completed using Context7 tools
     - Industry standards research validated with current sources
     - Final tech stack recommendations finalized with justification
     - All research based on current date context and verified sources

     Module Status: COMPLETED
     Next Module: Module 2 - Documentation Development"
     ```
   - **PUSH**: Push committed changes to remote repository
   - **VALIDATE**: Confirm git repository is clean and synchronized

## Validation Checkpoint

Before proceeding to Module 2, verify that all deliverables are complete:

- [ ] research_findings.md exists in ../../project_working_files/working_files/research/ folder and contains comprehensive technology research
- [ ] component_compatibility.md exists in ../../project_working_files/working_files/research/ folder and documents integration considerations
- [ ] industry_standards.md exists in ../../project_working_files/working_files/research/ folder and covers security/performance standards
- [ ] validated_tech_stack.md exists in ../../project_working_files/working_files/research/ folder and provides final technology recommendations
- [ ] All files contain source references with URLs and dates
- [ ] All recommendations are based on research, not assumptions
- [ ] Status file (../../project_working_files/status.md) updated to COMPLETED with completion notes
- [ ] Any task breakdown files in ../../project_working_files/working_files/tasks/ are marked as complete
- [ ] Git commit for Module 1 completion has been created and pushed
- [ ] Git repository shows clean status with no uncommitted changes
- [ ] Remote repository is synchronized with local Module 1 completion

**MANDATORY**: If any research deliverable is missing or incomplete, repeat the relevant research steps. All subsequent documentation MUST reference and build upon these research findings.

**DEBUG LOGGING REQUIREMENT**: If debug mode enabled, update ../../project_working_files/debug_log.md with:
- Module 1 completion summary with validation results
- Summary of all research conducted and sources used
- Any issues encountered or assumptions flagged
- Verification that all decisions were research-based

## Output Files
- research_findings.md
- component_compatibility.md
- industry_standards.md
- validated_tech_stack.md

## Next Module
Upon successful completion and validation, proceed to Module 2: Documentation Development.