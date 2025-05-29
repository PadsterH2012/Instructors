# Module: System Update Processor (SYSTEM MAINTENANCE)

## CRITICAL: Agent Execution Rules for This Module

**SYSTEM SAFETY REQUIREMENT**:
- This module ONLY processes updates to the project_instructions system itself
- NEVER use this module for regular project development work
- ALL changes must be validated to ensure instruction system integrity
- MANDATORY backup creation before any modifications

**UPDATE REQUEST VALIDATION**:
- Agent MUST read and validate update request files before processing
- Agent MUST ensure git repository is fully synchronized before starting
- Agent MUST create isolated working environment for each update
- Agent MUST validate changes don't break existing instruction system functionality

**SAFETY PROTOCOLS**:
- Create backups of all files before modification
- Test instruction system integrity after changes
- Maintain complete audit trail of all modifications
- Implement rollback capability if issues are discovered

---

## Overview

This module provides a safe, systematic process for updating the project instruction system based on user requests. It ensures that changes to core modules and processes are handled with appropriate safety measures and documentation.

## Prerequisites

- Access to file creation and modification tools
- Git repository access and synchronization capability
- Update request file exists in project_instructions/update_request_here/
- Agent has read and understood the current instruction system structure

## Execution Directives

### Step 1: Update Request Processing

Execute the following request processing steps:

1. **Scan for Update Requests**
   - Check project_instructions/update_request_here/ for *.txt files
   - Identify the most recent update request file
   - Read and analyze the update request content
   - Validate that request is for instruction system updates only

2. **Request Validation**
   - Verify request is clear and actionable
   - Identify which instruction modules will be affected
   - Assess complexity and potential impact of changes
   - Flag any requests that might compromise system integrity

3. **Git Synchronization Verification**
   - Run `git status` to check repository state
   - Ensure working directory is clean (no uncommitted changes)
   - Run `git pull` to ensure repository is fully synchronized
   - Verify no conflicts exist before proceeding

### Step 2: Isolated Environment Creation

Execute the following environment setup steps:

1. **Generate Unique Identifier**
   - Create random 6-character hexadecimal name: {newname}
   - Example: a3f7b2, 9e4c81, 2d6f95
   - Ensure uniqueness by checking existing folders

2. **Create Isolated Working Directory**
   - Create folder: project_instructions/update_request_here/{newname}/
   - This folder will contain all work related to this specific update
   - Ensures complete isolation from other updates

3. **Initialize Update Tracking**
   - Create {newname}_tasks.md in the {newname} folder
   - This file will track all tasks required for the update
   - Include metadata about the update request

### Step 3: Task Analysis and Planning

Execute the following task planning steps:

1. **Change Impact Analysis**
   - Analyze which instruction modules will be modified
   - Identify dependencies between modules
   - Assess potential breaking changes
   - Document required validation steps

2. **Task Breakdown Creation**
   - Break down the update request into specific, actionable tasks
   - Each task should be focused and well-defined
   - Include validation steps for each task
   - Add backup and rollback procedures

3. **Task File Structure**
   Create {newname}_tasks.md with this structure:
   ```markdown
   # Update Tasks: {newname}
   
   ## Update Request Summary
   - **Request File**: [original filename]
   - **Date Processed**: [current date]
   - **Unique ID**: {newname}
   - **Impact Assessment**: [modules affected]
   
   ## Tasks Required
   
   ### Task 1: [Task Name]
   - [ ] **Action**: [Specific action to take]
   - [ ] **Validation**: [How to verify completion]
   - [ ] **Backup**: [What to backup before changes]
   - [ ] **Rollback**: [How to revert if needed]
   
   ### Task 2: [Task Name]
   - [ ] **Action**: [Specific action to take]
   - [ ] **Validation**: [How to verify completion]
   - [ ] **Backup**: [What to backup before changes]
   - [ ] **Rollback**: [How to revert if needed]
   
   [Continue for all required tasks...]
   
   ## Validation Checklist
   - [ ] All tasks completed successfully
   - [ ] Instruction system integrity verified
   - [ ] Documentation updated appropriately
   - [ ] Git commit created with meaningful message
   - [ ] Original files archived properly
   - [ ] No breaking changes introduced
   
   ## Completion Status
   - **Started**: [timestamp]
   - **Completed**: [timestamp]
   - **Status**: [IN_PROGRESS/COMPLETED/FAILED]
   ```

### Step 4: Task Execution

Execute the following task completion steps:

1. **Pre-Execution Backup**
   - Create timestamped backup of all files that will be modified
   - Store backups in archivebin/ with clear naming convention
   - Document backup locations in task file

2. **Systematic Task Completion**
   - Work through tasks in {newname}_tasks.md one by one
   - Mark each task as complete only after validation
   - Update task file progress after each completion
   - Document any issues or deviations encountered

3. **Continuous Validation**
   - After each task, verify instruction system still functions
   - Check that no existing functionality is broken
   - Validate that changes align with original request
   - Test affected modules for proper operation

### Step 5: Documentation and Integration

Execute the following documentation steps:

1. **Update System Documentation**
   - Update relevant instruction module files
   - Modify any affected templates or examples
   - Update cross-references and dependencies
   - Ensure documentation consistency

2. **Create Change Documentation**
   - Document what was changed and why
   - Include before/after comparisons where relevant
   - Note any new capabilities or modified workflows
   - Update system overview documentation if needed

3. **Validation Testing**
   - Test instruction system functionality end-to-end
   - Verify all modules still work as expected
   - Check that new changes integrate properly
   - Confirm no regressions were introduced

### Step 6: Cleanup and Archiving

Execute the following cleanup steps:

1. **Archive Original Request**
   - Move original *.txt file from update_request_here/ to archivebin/
   - Use naming convention: update_request_{newname}_{timestamp}.txt
   - Preserve original content for audit trail

2. **Archive Working Directory**
   - Move entire {newname}/ folder to archivebin/
   - Rename to: update_work_{newname}_{timestamp}/
   - Preserve all task tracking and work artifacts

3. **Git Commit and Push**
   - Stage all modified instruction system files
   - Create meaningful commit message describing the changes
   - Example: "System Update {newname}: [brief description of changes]"
   - Push changes to remote repository
   - Verify push was successful

## Validation Checkpoint

Before considering the update complete, verify:

- [ ] Original update request file has been processed completely
- [ ] Git repository was fully synchronized before starting
- [ ] Unique working directory {newname} was created and used
- [ ] All tasks in {newname}_tasks.md are marked complete
- [ ] Instruction system functionality has been validated
- [ ] All affected documentation has been updated
- [ ] Original request file has been archived to archivebin/
- [ ] Working directory has been archived to archivebin/
- [ ] Git commit has been created and pushed successfully
- [ ] No breaking changes have been introduced
- [ ] System integrity has been maintained

## Safety Protocols

### Emergency Rollback Procedure
If issues are discovered after update completion:
1. Identify problematic changes from git history
2. Restore backed-up files from archivebin/
3. Revert git commits if necessary
4. Document rollback reasons and lessons learned
5. Create new update request to address issues properly

### System Integrity Checks
After each update, verify:
- All instruction modules can be read without errors
- Cross-references between modules are still valid
- Template files are properly formatted
- No circular dependencies have been created
- System documentation is consistent and complete

## Output Files
- project_instructions/update_request_here/{newname}/{newname}_tasks.md (task tracking)
- archivebin/update_request_{newname}_{timestamp}.txt (archived request)
- archivebin/update_work_{newname}_{timestamp}/ (archived working directory)
- Updated instruction system files (various locations)
- Git commit with system changes

## Usage Notes

This module should ONLY be used for:
- ✅ Updating instruction module content
- ✅ Modifying system templates
- ✅ Enhancing system workflows
- ✅ Adding new instruction capabilities
- ✅ Fixing instruction system bugs

This module should NEVER be used for:
- ❌ Regular project development work
- ❌ Creating user project files
- ❌ Modifying user project code
- ❌ General file management tasks
