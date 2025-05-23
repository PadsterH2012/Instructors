# System Upgrade Detection Script

## Purpose
This script helps agents detect when the project instruction system has been upgraded with new modules and guides them through the upgrade process.

## When to Use
- When an agent thinks the project is complete but you know there are new modules available
- When resuming work on an older project that may have been created before system upgrades
- When you want to ensure the agent is using the latest instruction system capabilities

## Instructions for Agent

### Step 1: Check Current Module Status
Read the status.md file and identify which modules are currently tracked:

```bash
# Read the current status file
cat ../../project_working_files/status.md
```

### Step 2: Check Available Modules
Check what modules are available in the instruction system:

```bash
# List all available instruction modules
ls -la ../../project_instructions/instruction_modules/
```

### Step 3: Compare and Detect Upgrades
Compare the modules in status.md against available modules:

**Expected Modules (Current System)**:
- Module 0: Initial Setup (module_initial_setup.md)
- Module 1: Research Phase (module_research_phase.md)
- Module 2: Documentation Development (module_documentation_development.md)
- Module 3: LLD Structure and Creation (module_lld_structure_creation.md)
- Module 4: Task and Gap Management (module_task_gap_management.md)
- Module 5: Validation and Planning (module_validation_planning.md)
- Module 6: High-Level Project Planning (module_high_level_planning.md)
- Module 7: Implementation Tracking System (module_implementation_tracking.md)

**If Module 7 is missing from status.md**: System upgrade detected!

### Step 4: Handle System Upgrade
If upgrade detected, follow these steps:

1. **Notify User**
   ```markdown
   🔄 SYSTEM UPGRADE DETECTED

   The project instruction system has been upgraded with new modules and infrastructure:
   - Module 7: Implementation Tracking System
   - Enhanced Module 0: Archive management and .gitignore setup
   - Enhanced Module 6: Status file lifecycle management

   I will upgrade your project infrastructure and execute new modules to enhance your project with the latest capabilities.

   This upgrade provides:
   - Structured implementation tracking with task-level progress
   - Enhanced progress visualization with STATUS_README dashboard
   - Professional .gitignore setup for clean repositories
   - Archive management with archivebin/ folder
   - Improved file lifecycle management

   Proceeding with infrastructure validation and module execution...
   ```

2. **Update Status File**
   Add Module 7 to the status.md file with NOT_STARTED status:
   ```markdown
   ## Module 7: Implementation Tracking System
   **Status**: NOT_STARTED
   **Last Updated**: [Current Date]
   **Dependencies**: Module 6 must be COMPLETED
   **Description**: Creates structured implementation tracking system with task-level progress monitoring and STATUS_README dashboard
   ```

3. **Infrastructure Validation and Upgrade**
   Validate and apply all infrastructure improvements from enhanced modules:

   **3.1 Archive Directory Setup**
   ```bash
   # Create archivebin if missing (Module 0 enhancement)
   mkdir -p ../../archivebin/
   echo "✅ Archive directory created/verified"
   ```

   **3.2 .gitignore Setup**
   ```bash
   # Create .gitignore if missing (Module 0 enhancement)
   if [ ! -f ../../.gitignore ]; then
     cat > ../../.gitignore << 'EOF'
# Project Instruction System (never commit)
project_instructions/

# Archive and temporary files
archivebin/
*.tmp
*.bak
*.backup

# System and debug files (keep in working files but exclude from commits when no longer needed)
# Uncomment these lines when files are no longer needed for development:
# project_working_files/system_info.env
# project_working_files/debug_log.md

# IDE and editor files
.vscode/
.idea/
*.swp
*.swo
*~

# OS generated files
.DS_Store
.DS_Store?
._*
.Spotlight-V100
.Trashes
ehthumbs.db
Thumbs.db
EOF
     echo "✅ .gitignore created with comprehensive exclusions"
   else
     echo "✅ .gitignore already exists"
   fi
   ```

   **3.3 Status File Archiving (if Module 6 complete)**
   ```bash
   # Archive status.md if high_level_plan.md exists (Module 6 enhancement)
   if [ -f ../../project_working_files/docs/high_level_plan.md ] && [ -f ../../project_working_files/status.md ]; then
     # Create timestamped backup
     cp ../../project_working_files/status.md ../../archivebin/status_$(date +%Y%m%d_%H%M%S).md
     # Move to archive
     mv ../../project_working_files/status.md ../../archivebin/status.md
     echo "✅ Status file archived to archivebin/"
   else
     echo "✅ Status file archiving not needed (Module 6 not complete or already archived)"
   fi
   ```

4. **Verify Prerequisites**
   Ensure Module 6 is COMPLETED before proceeding with Module 7

5. **Execute Module 7**
   Follow the instructions in module_implementation_tracking.md

### Step 5: Validation
After executing new modules, verify the upgrade was successful:

**Infrastructure Validation**:
- [ ] ../../archivebin/ directory exists
- [ ] ../../.gitignore file exists with project_instructions/ exclusion
- [ ] If Module 6 complete: status.md archived to archivebin/
- [ ] All infrastructure improvements applied

**Module 7 Validation**:
- [ ] Module 7 added to status.md (or archivebin/status.md)
- [ ] Module 7 executed and marked COMPLETED
- [ ] implementation_plan/ directory created
- [ ] STATUS_README.md dashboard created
- [ ] All Module 7 deliverables present

## Common Upgrade Scenarios

### Scenario A: Project "Complete" but Module 7 Missing
**Symptoms**: Agent says project is ready for implementation, but no implementation_plan/ directory exists
**Solution**: Run this detection script, apply infrastructure upgrades, execute Module 7

### Scenario B: Old Project Resume (Your Current Situation)
**Symptoms**:
- Project created before recent infrastructure improvements
- Missing archivebin/ directory
- Missing .gitignore file
- Status.md not archived despite Module 6 completion
**Solution**:
- Infrastructure validation will create missing ../../archivebin/
- .gitignore will be created with comprehensive exclusions
- Status.md will be archived if Module 6 is complete
- Module 7 will be added and executed

### Scenario C: Partial Infrastructure Upgrade
**Symptoms**: Some infrastructure present, others missing (e.g., has archivebin/ but no .gitignore)
**Solution**: Infrastructure validation checks each component individually and applies only what's missing

### Scenario D: Multiple Missing Modules
**Symptoms**: Multiple modules missing from status tracking
**Solution**: Add all missing modules in sequence, apply all infrastructure improvements, execute in order

## Agent Instructions

When a user asks you to "continue" or "check for upgrades" or mentions this script:

1. **Read this script completely**
2. **Follow the steps in order**
3. **Execute any detected upgrades automatically**
4. **Notify the user of what was upgraded**
5. **Continue with normal project flow**

This ensures projects always benefit from the latest instruction system capabilities and prevents agents from thinking projects are complete when new modules are available.
