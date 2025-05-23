# Module 0: Initial Setup (MANDATORY)

## CRITICAL: Agent Execution Rules for This Module

**MANDATORY READING REQUIREMENT**:
- Agents MUST read the project_plan.txt file (located at ../project_input/project_plan.txt relative to this module) BEFORE starting any setup
- Agents MUST NOT use any past knowledge about project structures or file organization
- ALL setup decisions MUST be based ONLY on the requirements specified in these instructions

**FIRST MODULE REQUIREMENT**:
- This module MUST be executed before any other modules
- NO other modules can be started until this module is COMPLETED
- This module creates the foundation for all subsequent work

**DEBUG MODE DETECTION**:
- Check if user has provided "--debug" flag in their request
- If debug mode is enabled, create comprehensive debug logging throughout all modules
- Debug logs help troubleshoot agent behavior and verify instruction compliance

---

## Overview
This module creates the isolated project working structure and tracking files needed for the instruction system to function safely. It establishes complete separation between instruction files and generated content, ensuring the instruction system remains untouched during execution.

## Prerequisites
- Access to file creation tools (save-file, str-replace-editor)
- Project plan file (../project_input/project_plan.txt) exists and has been read
- Agent has read and understood the project_instruction_index.md file

## Execution Directives

### 0.1 Isolated Directory Structure Creation

Execute the following directory creation steps:

1. **Create Isolated Project Working Files Structure**
   - Create "../../project_working_files/" folder (completely separate from project_instructions)
   - Create "../../project_working_files/working_files/" for internal working files
   - Create "../../project_working_files/working_files/research/" for Module 1 outputs
   - Create "../../project_working_files/working_files/design/" for Module 3 working files
   - Create "../../project_working_files/working_files/tasks/" for task breakdown files

2. **Create Final Documentation Structure**
   - Create "../../project_working_files/docs/" folder for final documentation deliverables
   - Create "../../project_working_files/docs/documentation/" for application documentation

3. **Verify Isolated Directory Structure**
   - Confirm ../../project_working_files/ structure exists completely separate from project_instructions/
   - Confirm all subdirectories are created properly
   - Verify project_instructions/ folder remains untouched
   - Document any issues with directory creation

### 0.2 Debug Log Creation (If Debug Mode Enabled)

Execute the following debug setup steps ONLY if "--debug" flag was provided:

1. **Create Debug Log File**
   - Create "../../project_working_files/debug_log.md" file in isolated working files area
   - Initialize with debug session header and timestamp
   - Set up structured logging format for all subsequent modules

2. **Debug Log Template**
   If debug mode is enabled, create the file with this exact content:

```markdown
# Agent Debug Log

## Debug Session Information
- **Session Started**: [Current timestamp]
- **Debug Mode**: ENABLED
- **Project**: Hair Salon Management App (from project_plan.txt)
- **Agent Instructions Source**: project_instructions/ folder

## Debug Logging Rules
- All reasoning and decision-making processes are logged
- Tool usage and research sources are documented
- Validation steps and checkpoint results are recorded
- Any assumptions or knowledge sources are explicitly noted
- Status updates and module transitions are tracked

---

## Module Execution Log

### Module 0: Initial Setup
**Started**: [Current timestamp]
**Status**: IN_PROGRESS

**Debug Notes**:
- Read project_plan.txt: [YES/NO and brief summary]
- Debug mode detected: YES
- Directory creation reasoning: [Brief explanation]
- Status file creation reasoning: [Brief explanation]

**Actions Taken**:
- Created ../../project_working_files/ isolated directory structure
- Created ../../project_working_files/docs/ directory (final docs)
- Created ../../project_working_files/status.md file
- Created this debug log file in isolated area

**Validation Results**:
- All required directories exist: [YES/NO]
- Status file contains correct template: [YES/NO]
- Ready to proceed to Module 1: [YES/NO]

**Completed**: [Timestamp when module finishes]

---

## Research and Decision Tracking

### Technology Research Log
[This section will be populated by Module 1]

### Tool Usage Log
[This section will track all brave_web_search and Context7 tool usage]

### Assumption Detection Log
[This section will flag any potential use of past knowledge vs. research]

### Validation Checkpoint Log
[This section will track all module validation steps]

---

## Troubleshooting Information

### Common Issues to Watch For:
- Agent using past knowledge instead of research
- Skipping validation checkpoints
- Not updating status files properly
- Creating files in wrong locations
- Making assumptions about technology choices

### Debug Verification Points:
- Are all technology decisions backed by research sources?
- Are all file paths relative to project_instructions folder?
- Are status updates being made at each module transition?
- Are validation checkpoints being completed?
- Are tool usage requirements being followed?
```

### 0.3 System Date Context Capture

Execute the following system date capture steps:

1. **Capture Current System Date and Time**
   - Create system_info.env file with current date information
   - This provides date context for all research and development activities
   - Ensures agents use current date when searching for latest information

2. **System Date Capture Commands**
   Execute the following commands to capture system date:
   ```bash
   # Capture current date information for research context
   echo "CURRENT_DATE=$(date '+%Y-%m-%d')" > ../../project_working_files/system_info.env
   echo "CURRENT_DATETIME=$(date '+%Y-%m-%d %H:%M:%S %Z')" >> ../../project_working_files/system_info.env
   echo "CURRENT_YEAR=$(date '+%Y')" >> ../../project_working_files/system_info.env
   echo "RESEARCH_CONTEXT=Focus on information from $(date '+%Y') and late $(($(date '+%Y')-1))" >> ../../project_working_files/system_info.env
   ```

3. **Date Context Usage Instructions**
   - All research modules should reference this file for current date context
   - Include current year in technology searches (e.g., "latest 2024 FastAPI best practices")
   - Use CURRENT_DATE as baseline for information currency validation
   - Reference RESEARCH_CONTEXT for appropriate temporal scope

**Windows Users**: If using Windows without Unix-like environment:
- Install Git Bash or WSL for `date` command support
- Alternatively, manually create system_info.env with current date:
  ```
  CURRENT_DATE=2024-12-19
  CURRENT_DATETIME=2024-12-19 20:00:00 UTC
  CURRENT_YEAR=2024
  RESEARCH_CONTEXT=Focus on information from 2024 and late 2023
  ```

### 0.4 Status Tracking File Creation

Execute the following status file creation steps:

1. **Create Unified Status Tracking File**
   - Create "../../project_working_files/status.md" file in isolated working files area
   - This replaces both project_instruction_status.md and temp_tasks.md to eliminate duplication
   - Use the exact template provided in the instructions below
   - Ensure all module statuses are set to NOT_STARTED initially

2. **Status File Template**
   Create the file with this exact content:

```markdown
# Project Status and Task Management

## CRITICAL: Agent Execution Rules

**MANDATORY STATUS UPDATE REQUIREMENT**:
- Agents MUST check this file before starting any work (RESUME CAPABILITY)
- Agents MUST update this file before starting any module
- Agents MUST update this file upon completing any module
- Agents MUST NOT proceed to the next module without updating status to COMPLETED
- All status changes MUST include timestamp and brief completion summary

**RESUME CAPABILITY**:
- This file determines where agents resume work after interruption
- Agents MUST validate completed modules before proceeding
- If validation fails, mark module as NEEDS_VALIDATION and restart
- Never restart completed work unless validation fails

**TASK BREAKDOWN INTEGRATION**:
- Complex tasks MUST be organized into logical, manageable components
- Task breakdown files are stored in working_files/tasks/ (within project_working_files)
- This status file tracks overall module progress, breakdown files track component progress

---

## Status Definitions

- **NOT_STARTED**: Module has not been initiated by any agent
- **IN_PROGRESS**: Module execution has begun but deliverables are not complete
- **COMPLETED**: All module deliverables have been created and validated according to module requirements
- **NEEDS_VALIDATION**: Module marked complete but validation failed, requires restart
- **VALIDATED**: Module outputs have been cross-checked against project_plan.txt and approved for next module

## Current Module Status

### 0. Initial Setup (MANDATORY)
- **Status**: IN_PROGRESS
- **Required Deliverables**: ../../project_working_files/ structure, status.md, debug_log.md (if debug mode)
- **Location**: ../../project_working_files/ (isolated from instructions)
- **Last Updated**: [Current timestamp when creating this file]
- **Updated By**: [Agent identifier]
- **Completion Notes**: [In progress - creating isolated structure]

### 1. Research Phase (MANDATORY)
- **Status**: NOT_STARTED
- **Required Deliverables**: research_findings.md, component_compatibility.md, industry_standards.md, validated_tech_stack.md
- **Location**: ../../project_working_files/working_files/research/ folder
- **Prerequisites**: Module 0 must be COMPLETED
- **Last Updated**: [Never]
- **Updated By**: [None]
- **Completion Notes**: [None]

### 2. Documentation Development (MANDATORY)
- **Status**: NOT_STARTED
- **Required Deliverables**: project_scope.md, project_hld.md, techstack.md
- **Location**: ../../project_working_files/docs/ folder (final documentation)
- **Prerequisites**: Module 1 must be COMPLETED
- **Last Updated**: [Never]
- **Updated By**: [None]
- **Completion Notes**: [None]

### 3. LLD Structure and Creation (MANDATORY)
- **Status**: NOT_STARTED
- **Required Deliverables**: Consolidated LLD files, parallel application documentation
- **Location**: ../../project_working_files/working_files/design/ (working files), ../../project_working_files/docs/documentation/ (final docs)
- **Prerequisites**: Module 2 must be COMPLETED
- **Last Updated**: [Never]
- **Updated By**: [None]
- **Completion Notes**: [None]

### 4. Task and Gap Management (MANDATORY)
- **Status**: NOT_STARTED
- **Required Deliverables**: Task breakdown files, feature tracking, gap analysis
- **Location**: ../../project_working_files/working_files/tasks/ folder
- **Prerequisites**: Module 3 must be IN_PROGRESS or COMPLETED
- **Last Updated**: [Never]
- **Updated By**: [None]
- **Completion Notes**: [None]

### 5. Validation and Planning (MANDATORY)
- **Status**: NOT_STARTED
- **Required Deliverables**: Validation reports, final project plan
- **Location**: ../../project_working_files/docs/ folder
- **Prerequisites**: Module 4 must be COMPLETED
- **Last Updated**: [Never]
- **Updated By**: [None]
- **Completion Notes**: [None]

## Status Update History

### Template for Status Updates
```
[YYYY-MM-DD HH:MM] - Module [Number]: [Module Name]
- Status Changed: [OLD_STATUS] → [NEW_STATUS]
- Updated By: [Agent/User Identifier]
- Deliverables Status: [List of completed deliverables]
- Notes: [Brief summary of work completed or issues encountered]
- Next Steps: [What needs to be done next, if applicable]
```

### Update Log
[No updates recorded yet - will be populated as modules are executed]

## Validation Checkpoints

Before marking any module as COMPLETED, verify:

1. **All required deliverables exist** in the specified locations
2. **Content aligns with project_plan.txt** requirements
3. **Research sources are documented** with URLs and dates (for research modules)
4. **File paths follow the portable folder structure** relative to project_instructions/
5. **No assumptions made** without explicit research validation

## Task Breakdown Tracking

### Active Task Breakdowns
[This section tracks large tasks that have been broken down into micro-tasks]

**Format**: [Module] - [Task Name] - Status: [Active/Complete] - File: ../../project_working_files/working_files/tasks/[filename]

### Completed Task Breakdowns
[This section archives completed task breakdowns for reference]

## Next Module Execution Rules

- **Module 0 (Initial Setup)**: Can start immediately after reading project_plan.txt
- **Module 1 (Research Phase)**: Requires Module 0 status = COMPLETED
- **Module 2 (Documentation Development)**: Requires Module 1 status = COMPLETED
- **Module 3 (LLD Structure and Creation)**: Requires Module 2 status = COMPLETED
- **Module 4 (Task and Gap Management)**: Requires Module 3 status = IN_PROGRESS or COMPLETED
- **Module 5 (Validation and Planning)**: Requires Module 4 status = COMPLETED

**CRITICAL**: Agents MUST check this status file before executing any module to ensure prerequisites are met.

## Resume Instructions for Agents

1. **Read this status file first** - determine current state
2. **Validate completed modules** - check deliverables exist
3. **Check for active task breakdowns** - resume micro-tasks if needed
4. **Start from correct module** - based on status and validation
5. **Update status as work progresses** - maintain accurate tracking
```

### 0.3 Initial Status Update

Execute the following status update steps:

1. **Update Module 0 Status to COMPLETED**
   - Update the status file to mark Module 0 as COMPLETED
   - Add timestamp and completion notes
   - Add entry to the Status Update History section

## Validation Checkpoint

Before proceeding to Module 1, verify that all setup is complete:

- [ ] "../../project_working_files/" directory structure exists completely separate from project_instructions/
- [ ] "../../project_working_files/working_files/" directory exists
- [ ] "../../project_working_files/working_files/research/" directory exists
- [ ] "../../project_working_files/working_files/design/" directory exists
- [ ] "../../project_working_files/working_files/tasks/" directory exists
- [ ] "../../project_working_files/docs/" directory exists
- [ ] "../../project_working_files/docs/documentation/" directory exists
- [ ] "../../project_working_files/system_info.env" file exists with current date information
- [ ] "../../project_working_files/status.md" file exists and contains the complete template
- [ ] Module 0 status is marked as COMPLETED in status.md
- [ ] Status update history contains the completion entry for Module 0
- [ ] If debug mode enabled: "../../project_working_files/debug_log.md" file exists in isolated area
- [ ] If debug mode enabled: Debug log shows Module 0 completion with validation results
- [ ] Verify project_instructions/ folder remains completely untouched

**MANDATORY**: If any setup deliverable is missing or incomplete, repeat the relevant setup steps. All subsequent modules depend on this isolated foundation.

**STATUS UPDATE REQUIREMENT**: Update ../../project_working_files/status.md to COMPLETED status with timestamp and completion summary before proceeding to Module 1.

## Output Files
- ../../project_working_files/system_info.env (current date context for research)
- ../../project_working_files/status.md (unified status and task tracking)
- ../../project_working_files/working_files/ directory structure
- ../../project_working_files/docs/ directory (final documentation)
- ../../project_working_files/debug_log.md (if debug mode enabled)

## Next Module
Upon successful completion and validation, proceed to Module 1: Research Phase.
