# Module: Resume System (CORE FUNCTIONALITY)

## CRITICAL: Resume Capability Rules

**MANDATORY RESUME REQUIREMENT**:
- Agents MUST check current status before starting any work
- Agents MUST resume from the correct point based on status tracking
- NO module can be started without verifying prerequisites are met
- Resume process validates all previous work before proceeding

**STATUS-BASED EXECUTION**:
- Read status.md to determine current state
- Validate all completed modules have required deliverables
- Start from the next incomplete module
- Never restart completed work unless validation fails

---

## Resume Process Flow

### Step 1: Global Rule Validation (MANDATORY FIRST STEP)

When an agent starts work, they MUST:

1. **🚨 CRITICAL: Global Rule Enforcement Checkpoint**
   - **MANDATORY**: Validate ALL global enforcement rules before ANY module work
   - **BLOCKING**: Any global rule failure MUST prevent module progression
   - **COMPREHENSIVE**: Check file creation compliance, module transition controls, documentation integrity, error handling protocols
   - **CROSS-MODULE**: Validate research integration, technology consistency, file path validation, status consistency, quality standards
   - **NO EXCEPTIONS**: Global rule violations MUST be corrected before continuing

2. **Infrastructure Validation (MANDATORY SECOND STEP)**
   - Check if `../../archivebin/` directory exists
   - Check if `../../.gitignore` file exists with project_instructions/ exclusion
   - If infrastructure missing: Apply infrastructure upgrades before proceeding
   - This ensures all projects have modern infrastructure regardless of creation date

   **Infrastructure Upgrade Process (if needed)**:
   ```bash
   # Create archivebin if missing
   mkdir -p ../../archivebin/

   # Create .gitignore if missing (MUST be at project root level)
   if [ ! -f ../../.gitignore ]; then
     cat > ../../.gitignore << 'EOF'
# Project Instruction System (never commit)
project_instructions/

# Archive and temporary files
archivebin/
*.tmp
*.bak
*.backup

# IDE and editor files
.vscode/
.idea/
*.swp
*.swo
*~

# OS generated files
.DS_Store
Thumbs.db
EOF
   fi

   # Archive status.md if high_level_plan.md exists and status.md exists
   if [ -f ../../project_working_files/docs/high_level_plan.md ] && [ -f ../../project_working_files/status.md ]; then
     cp ../../project_working_files/status.md ../../archivebin/status_$(date +%Y%m%d_%H%M%S).md
     mv ../../project_working_files/status.md ../../archivebin/status.md
   fi
   ```

2. **Check for High-Level Plan (PRIORITY)**
   - First check if `../../project_working_files/docs/high_level_plan.md` exists
   - If exists: Use plan-based resume logic (see Section 4)
   - If not exists: Use status.md-based resume logic (continue below)

3. **Check for System Upgrades**
   - Check if status.md contains all available modules (0-7)
   - If Module 7 missing from status.md: System has been upgraded
   - Add missing modules to status.md with NOT_STARTED status
   - Notify user of system upgrade and new modules available

4. **Read Status File (Fallback)**
   - Try to open `../../project_working_files/status.md` file
   - If not found, check `../../archivebin/status.md` (archived after Module 6)
   - Identify current module status for each module (0-7)
   - Note any IN_PROGRESS modules

4. **Validate Completed Modules**
   - For each module marked COMPLETED, verify deliverables exist
   - Check file locations and content quality
   - If validation fails, mark module as NEEDS_VALIDATION

5. **Determine Starting Point**
   - Find first module that is NOT_STARTED or IN_PROGRESS
   - Verify all prerequisite modules are COMPLETED
   - If prerequisites missing, start from earliest incomplete prerequisite

### Step 2: Resume Decision Matrix

**Module 0 (Initial Setup)**:
- Status: NOT_STARTED → Execute Module 0 completely
- Status: IN_PROGRESS → Check what's missing, complete remaining setup
- Status: COMPLETED → Validate directories exist, proceed to Module 1

**Module 1 (Research Phase)**:
- Status: NOT_STARTED → Verify Module 0 complete, execute Module 1
- Status: IN_PROGRESS → Check working_files/research/, resume from incomplete research
- Status: COMPLETED → Validate research files exist and have content, proceed to Module 2

**Module 2 (Documentation Development)**:
- Status: NOT_STARTED → Verify Module 1 complete, execute Module 2
- Status: IN_PROGRESS → Check ../docs/ folder, resume from incomplete documentation
- Status: COMPLETED → Validate docs exist and reference research, proceed to Module 3

**Module 3 (LLD Structure and Creation)**:
- Status: NOT_STARTED → Verify Module 2 complete, execute Module 3
- Status: IN_PROGRESS → Check working_files/design/, resume from incomplete LLD
- Status: COMPLETED → Validate LLD structure exists, proceed to Module 4

**Module 4 (Task and Gap Management)**:
- Status: NOT_STARTED → Verify Module 3 in progress, execute Module 4
- Status: IN_PROGRESS → Check working_files/tasks/, resume task management
- Status: COMPLETED → Validate task files exist, proceed to Module 5

**Module 5 (Validation and Planning)**:
- Status: NOT_STARTED → Verify Module 4 complete, execute Module 5
- Status: IN_PROGRESS → Resume validation activities
- Status: COMPLETED → Proceed to Module 6

**Module 6 (High-Level Project Planning)**:
- Status: NOT_STARTED → Verify Module 5 complete, execute Module 6
- Status: IN_PROGRESS → Resume project planning activities
- Status: COMPLETED → Proceed to Module 7

**Module 7 (Implementation Tracking System)**:
- Status: NOT_STARTED → Verify Module 6 complete, execute Module 7
- Status: IN_PROGRESS → Resume implementation tracking setup
- Status: COMPLETED → All modules complete, implementation tracking system ready, proceed to actual development using implementation_plan/

### Step 3: Resume Validation Checklist

Before resuming any module, verify:

**For Module 0 Resume**:
- [ ] project_plan.txt exists and is readable
- [ ] project_instructions folder structure is intact
- [ ] No conflicting files from previous incomplete runs

**For Module 1 Resume**:
- [ ] Module 0 marked as COMPLETED in status.md
- [ ] working_files/ directory exists
- [ ] If IN_PROGRESS: Check which research files exist in working_files/research/

**For Module 2 Resume**:
- [ ] Module 1 marked as COMPLETED in status.md
- [ ] All research files exist in working_files/research/
- [ ] If IN_PROGRESS: Check which docs exist in ../docs/

**For Module 3 Resume**:
- [ ] Module 2 marked as COMPLETED in status.md
- [ ] All documentation files exist in ../docs/
- [ ] If IN_PROGRESS: Check LLD structure in working_files/design/

**For Module 4 Resume**:
- [ ] Module 3 marked as IN_PROGRESS or COMPLETED in status.md
- [ ] LLD structure exists
- [ ] If IN_PROGRESS: Check task files in working_files/tasks/

**For Module 5 Resume**:
- [ ] Module 4 marked as COMPLETED in status.md
- [ ] All task management files exist
- [ ] If IN_PROGRESS: Check validation progress

**For Module 6 Resume**:
- [ ] Module 5 marked as COMPLETED in status.md
- [ ] All validation files exist
- [ ] If IN_PROGRESS: Check high-level planning progress

**For Module 7 Resume**:
- [ ] Module 6 marked as COMPLETED in status.md
- [ ] high_level_plan.md exists in ../docs/
- [ ] If IN_PROGRESS: Check implementation_plan/ structure and STATUS_README.md

## Resume Instructions for Agents

### When Starting Work:

```markdown
## MANDATORY RESUME PROCESS

1. **🚨 GLOBAL RULE VALIDATION (FIRST - BLOCKING)**
   - **MANDATORY**: Validate ALL global enforcement rules before ANY work
   - Check file creation compliance, module transition controls, documentation integrity
   - Validate research integration, technology consistency, file path validation
   - Confirm error handling protocols, status consistency, quality standards
   - **BLOCKING**: Any global rule failure prevents all module progression
   - **CORRECTION REQUIRED**: Fix all global rule violations before proceeding

2. **Infrastructure Validation (SECOND)**
   - Check if archivebin/ directory exists, create if missing
   - Check if .gitignore exists, create if missing
   - Archive status.md if high_level_plan.md exists and status.md exists
   - Apply all infrastructure upgrades before proceeding

3. **Status Check and Validation**
   - Read project_instructions/status.md (or archivebin/status.md if archived)
   - Identify current state of all modules
   - Note any IN_PROGRESS or NEEDS_VALIDATION modules
   - **MANDATORY**: Validate status file accuracy against actual deliverables
   - **BLOCKING**: Correct any status inconsistencies before proceeding

4. **Module-Specific Validation**
   - For each COMPLETED module, verify deliverables exist
   - Check file locations match expected paths
   - Validate content quality and completeness
   - **MANDATORY**: Apply standardized module validation framework

5. **Resume Point Determination**
   - Find first module that needs work
   - Verify prerequisites are met
   - **GLOBAL COMPLIANCE**: Ensure global rules maintained before starting
   - If validation failed, restart from failed module

6. **Resume Execution**
   - **MODULE START**: Apply mandatory per-module start validation
   - Start from determined resume point with global rule compliance
   - **MODULE EXECUTION**: Maintain global rule compliance throughout
   - **MODULE COMPLETION**: Apply mandatory per-module completion validation
   - Update status tracking as work progresses

7. **Debug Logging** (if enabled)
   - Log global rule validation results
   - Document resume decision process
   - Track what work was resumed vs. restarted
```

### Resume Scenarios:

**Scenario 1: Fresh Start**
- All modules: NOT_STARTED
- Action: Start with Module 0

**Scenario 2: Partial Completion**
- Modules 0-2: COMPLETED
- Module 3: IN_PROGRESS
- Modules 4-5: NOT_STARTED
- Action: Resume Module 3, validate deliverables first

**Scenario 3: Validation Failure**
- Module 1: COMPLETED but research files missing
- Action: Mark Module 1 as NEEDS_VALIDATION, restart Module 1

**Scenario 4: Task Breakdown Resume**
- Module 3: IN_PROGRESS
- Task breakdown file exists for LLD creation
- Action: Resume from current micro-task in breakdown file

**Scenario 5: System Upgrade Detected**
- Modules 0-6: COMPLETED
- Module 7: Missing from status.md (system upgraded)
- Action: Add Module 7 to status.md as NOT_STARTED, notify user, execute Module 7

**Scenario 6: Implementation Ready Check**
- All modules 0-7: COMPLETED
- high_level_plan.md exists
- implementation_plan/ exists (from Module 7)
- Action: System ready for actual development, use implementation_plan/ as guide

## Integration with Task Breakdown

When resuming IN_PROGRESS modules:

1. **Check for Task Breakdown Files**
   - Look in working_files/tasks/ for [module]_*_breakdown.md files
   - If breakdown exists, resume from current micro-task
   - If no breakdown, assess if current task needs breakdown

2. **Resume Micro-Task Execution**
   - Read breakdown file to find current micro-task
   - Validate completed micro-tasks
   - Continue from next incomplete micro-task

3. **Update Progress Tracking**
   - Update breakdown file progress
   - Update main status.md when module completes
   - Maintain both detailed and summary tracking

## Error Recovery

### When Resume Process Fails:

1. **Document the Issue**
   - Log what validation failed
   - Note which files are missing or corrupted
   - Record current status of all modules

2. **Determine Recovery Strategy**
   - Can missing files be recreated quickly?
   - Is it faster to restart the module?
   - Are there dependencies that need attention?

3. **Execute Recovery**
   - Mark affected modules as NEEDS_VALIDATION
   - Restart from earliest affected module
   - Update status.md with recovery actions

4. **Prevent Future Issues**
   - Improve validation criteria
   - Add additional checkpoint validations
   - Update status tracking to be more robust

## Plan-Based Resume Logic (Priority System)

### Step 4: High-Level Plan Resume Process

When `../../project_working_files/docs/high_level_plan.md` exists, use this priority logic:

1. **Plan File Validation**
   - Verify high_level_plan.md file is readable and properly formatted
   - Check that plan contains valid phase and task structure
   - If corrupted: Fall back to status.md resume logic

2. **Current Phase Detection**
   - Read plan file to identify current phase status
   - Find first phase with status NOT_STARTED or IN_PROGRESS
   - Identify incomplete tasks within current phase

3. **Task-Level Resume**
   - Resume from first incomplete task in current phase
   - Check task dependencies are satisfied
   - Verify subtask completion status

4. **Plan Progress Tracking**
   - Update plan file as tasks are completed
   - Mark phases as COMPLETED when all tasks finished
   - Update overall progress percentage

### Plan-Based Resume Decision Matrix

**Phase Status: NOT_STARTED**
- Begin phase execution from first task
- Verify all prerequisite phases are COMPLETED
- Initialize phase tracking

**Phase Status: IN_PROGRESS**
- Find first incomplete task in phase
- Resume from that specific task
- Continue task execution sequence

**Phase Status: COMPLETED**
- Move to next phase
- Verify phase deliverables exist
- Begin next phase if prerequisites met

### Plan Update Requirements

When using plan-based resume:
- Update task status immediately upon completion
- Mark subtasks as completed with checkboxes
- Update phase status when all tasks complete
- Maintain atomic updates to prevent corruption
- Log progress in debug mode (if enabled)

### Fallback to Status.md

Use status.md resume logic when:
- high_level_plan.md file does not exist
- Plan file is corrupted or unreadable
- Plan format is invalid or incomplete
- User explicitly requests status.md-based resume

**Note**: After Module 6 completion, status.md is archived to ../../archivebin/. The resume system will automatically check the archived location if the main status.md file is not found.

## System Upgrade Detection and Handling

### Detecting System Upgrades

When an agent starts work, it must check for system upgrades:

1. **Module Count Verification**
   - Check if status.md contains entries for all available modules (0-7)
   - Compare against instruction_modules/ directory to detect new modules
   - If modules are missing from status.md: System has been upgraded

2. **Upgrade Notification**
   ```markdown
   🔄 SYSTEM UPGRADE DETECTED

   The project instruction system has been upgraded with new modules:
   - Module 7: Implementation Tracking System

   I will add the new module to your status tracking and execute it to enhance your project with the latest capabilities.

   This upgrade provides:
   - Structured implementation tracking with task-level progress
   - Enhanced progress visualization with STATUS_README dashboard
   - Phase-based task breakdown for better project management

   Proceeding with Module 7 execution...
   ```

3. **Status File Update**
   - Add missing modules to status.md with NOT_STARTED status
   - Maintain existing module statuses
   - Update status file format if needed for new features

4. **Automatic Module Execution**
   - Execute newly detected modules in sequence
   - Follow normal module prerequisites and validation
   - Update status as modules complete

### Upgrade Scenarios

**Scenario A: Module 7 Added After Module 6 Complete**
- Current: Modules 0-6 COMPLETED
- Action: Add Module 7 as NOT_STARTED, execute Module 7
- Result: Complete system with implementation tracking

**Scenario B: Multiple New Modules**
- Current: Modules 0-5 COMPLETED
- New: Modules 6-7 available
- Action: Add both modules, execute in sequence (6 then 7)

**Scenario C: Mid-Project Upgrade**
- Current: Module 3 IN_PROGRESS
- New: Module 7 available
- Action: Add Module 7 as NOT_STARTED, continue current work, execute Module 7 when prerequisites met

### Backward Compatibility

The enhanced resume system maintains full backward compatibility:
- Existing status.md files continue to work
- Old projects can be upgraded seamlessly
- No data loss during system upgrades
- Graceful handling of missing or new modules

This enhanced resume system provides both high-level project tracking and detailed task-level progress management while maintaining backward compatibility and handling system upgrades automatically.
