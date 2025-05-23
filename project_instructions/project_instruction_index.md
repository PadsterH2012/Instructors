# Project Instruction Index

## 🚨 CRITICAL: READ FIRST - Tool Input Size Management

**MANDATORY FIRST READ**: `CRITICAL_READ_FIRST.md` (in this same folder)
- **URGENT**: Resolves "tool input too large" errors
- **REQUIRED**: Must be read before executing any modules
- **CRITICAL**: Contains mandatory tool usage rules and size limits
- **FAILURE TO READ**: Will result in continued execution errors

## CRITICAL: Agent Execution Rules

**MANDATORY READING REQUIREMENT**:
- Agents MUST read this entire instruction index file before taking any action
- Agents MUST NOT use any past knowledge or memory about similar projects
- Agents MUST ONLY act based on information explicitly provided in these instruction files
- Agents MUST read the project_plan.txt file (located in the parent directory of project_instructions/) to understand the specific project requirements

**VALIDATION REQUIREMENT**:
- Before executing any module, agents MUST confirm they have read and understood the project plan
- All decisions MUST be based solely on research conducted through the specified tools
- NO assumptions about technology stacks, frameworks, or implementation approaches without explicit research validation

**FOLDER PORTABILITY AND SAFETY REQUIREMENT**:
- This project_instructions folder is designed to be portable and work within any location
- All file paths are relative to the project_instructions folder location
- Agents MUST work within the isolated folder structure for complete safety

**FILE ORGANIZATION AND SAFETY RULES**:
- INSTRUCTION ISOLATION: project_instructions/ folder remains completely untouched during agent execution
- WORKING FILES ISOLATION: All agent-created files go to ../../project_working_files/ (relative to instruction modules)
- SAFETY DESIGN: project_working_files/ can be safely deleted without affecting instructions
- CLEAR SEPARATION: Complete isolation between instruction system and generated content
- INPUT PROTECTION: project_plan.txt moved to project_input/ within project_instructions for safety

**DEBUG MODE REQUIREMENT**:
- If the user provides "--debug" flag, agents MUST enable comprehensive debug logging
- Debug mode captures all reasoning, decision-making, validation steps, and tool usage
- Debug logs are written to "../../project_working_files/debug_log.md" file (relative to instruction modules) for troubleshooting and verification
- Debug mode helps verify agents are following instructions and not using past knowledge

---

This index provides a comprehensive overview of all instruction modules for the project documentation process. Each module contains specific directives for agents to follow in a step-by-step manner.

## Module Structure

All instruction modules are located in the `instruction_modules/` folder relative to this index file.

### Core Instruction Modules

0. **Initial Setup (MANDATORY)**
   - File: `instruction_modules/module_initial_setup.md`
   - Description: Creates isolated project working structure and status tracking file for the instruction system
   - Prerequisites: None
   - Outputs: ../../project_working_files/ structure, status.md, docs/ (final docs)

1. **Research Phase (MANDATORY)**
   - File: `instruction_modules/module_research_phase.md`
   - Description: Mandatory research phase including technology stack research, component compatibility research, industry standards research, and research validation
   - Prerequisites: Initial Setup completion
   - Outputs: ../../project_working_files/working_files/research/ (all research files)

2. **Documentation Development (MANDATORY)**
   - File: `instruction_modules/module_documentation_development.md`
   - Description: Project scope documentation and high-level design documentation creation
   - Prerequisites: Research Phase completion
   - Outputs: ../../project_working_files/docs/ (project_scope.md, project_hld.md, techstack.md)

3. **LLD Structure and Creation (MANDATORY)**
   - File: `instruction_modules/module_lld_structure_creation.md`
   - Description: Consolidated LLD structure with parallel application documentation and self-referencing system
   - Prerequisites: Documentation Development completion
   - Outputs: ../../project_working_files/working_files/design/ (consolidated LLD files), ../../project_working_files/docs/documentation/ (application docs)

4. **Task and Gap Management (MANDATORY)**
   - File: `instruction_modules/module_task_gap_management.md`
   - Description: Documentation subtask management, iterative development loops, feature management, and **mandatory gap resolution**
   - Prerequisites: LLD Structure and Creation in progress
   - Outputs: temp_tasks.md, feature_list.md, missing_detail.md, gap_resolution_research.md, **resolved gaps**

5. **Validation and Planning (MANDATORY)**
   - File: `instruction_modules/module_validation_planning.md`
   - Description: Validation and alignment processes, project execution planning, and documentation maintenance
   - Prerequisites: Task and Gap Management completion
   - Outputs: project_plan.md, validation reports

6. **High-Level Project Planning (MANDATORY)**
   - File: `instruction_modules/module_high_level_planning.md`
   - Description: User-interactive project planning with MVP progression and comprehensive roadmap creation
   - Prerequisites: Validation and Planning completion
   - Outputs: ../../project_working_files/docs/high_level_plan.md (master project roadmap), enhanced resume system

## Execution Order

Execute modules in the following order:
0. Initial Setup → 1. Research Phase → 2. Documentation Development → 3. LLD Structure and Creation → 4. Task and Gap Management → 5. Validation and Planning → 6. High-Level Project Planning

## Cross-Module Dependencies

- Module 0 (Initial Setup) must be completed before any other modules can begin
- All modules must reference and build upon outputs from previous modules
- Research findings from Module 1 must be integrated into all subsequent modules
- LLD documents from Module 3 must be validated in Module 5
- Task management from Module 4 applies to all documentation activities
- Module 6 synthesizes all outputs from Modules 1-5 into a comprehensive project roadmap
- All project instructions must be validated against the project_plan.txt file before execution to ensure alignment with defined parameters and constraints
- Status tracking from Module 0 must be maintained throughout all subsequent modules
- High-level plan from Module 6 becomes the primary progress tracking system when created

## Project Plan Validation

To ensure proper validation against the project requirements:

**DO NOT USE MEMORY MCP** when implementing this validation rule.

1. Locate the project_plan.txt file by:
   - Checking the project_input folder within the project_instructions folder
   - The file should be located at `project_input/project_plan.txt` relative to this index file
   - If not found, prompt the user to provide the specific file path
2. Validate that the project_plan.txt file exists before proceeding with any instruction execution
3. All instruction modules must be checked against the requirements and constraints defined in the project_plan.txt file
4. All research and documentation must align with the specific project described in project_plan.txt

## Status Tracking and Task Management

The status of each module and task breakdown is tracked in: `../../project_working_files/status.md` (relative to instruction modules)

**IMPORTANT**: This file is created by Module 0 (Initial Setup) and must exist before any other modules can be executed.

**UNIFIED TRACKING SYSTEM**:
- Replaces both project_instruction_status.md and temp_tasks.md to eliminate duplication
- Provides module-level status tracking for resume capability
- Integrates with task breakdown system for large task management
- Enables agents to resume work from any interruption point
- Located in isolated project_working_files/ for safety

Please refer to the status file for:
- Current status of each module (resume capability)
- Active and completed task breakdowns
- Status update history and progress tracking
- Resume instructions for agents

All status updates should be made in the status file, not in this index or the module files themselves.

## Core Functionality Modules

**Task Breakdown System**: `instruction_modules/module_task_breakdown.md`
- Breaks large tasks into 5-15 minute micro-tasks
- Creates hidden task files for detailed progress tracking
- Prevents agents from struggling with overwhelming tasks

**Enhanced Micro-Task Framework V2**: `../../project_working_files/working_files/tasks/micro_task_framework_v2.md`
- **CRITICAL**: Resolves "tool input too large" errors
- Strict input size management (max 300 lines save-file, max 200 lines str-replace-editor)
- LLD processing limits (use view_range, never process entire files)
- Reference-based approach instead of content copying
- **MANDATORY**: All agents must follow this framework to prevent size errors

**Resume System**: `instruction_modules/module_resume_system.md`
- Enables agents to resume work from interruption points
- Validates completed modules before proceeding
- Provides status-based execution logic
- Enhanced with plan-based resume capability (priority over status.md when high_level_plan.md exists)
