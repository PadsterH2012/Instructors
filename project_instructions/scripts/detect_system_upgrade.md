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
   
   The project instruction system has been upgraded with new modules:
   - Module 7: Implementation Tracking System
   
   I will add the new module to your status tracking and execute it to enhance your project with the latest capabilities.
   
   This upgrade provides:
   - Structured implementation tracking with task-level progress
   - Enhanced progress visualization with STATUS_README dashboard
   - Phase-based task breakdown for better project management
   
   Proceeding with Module 7 execution...
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

3. **Verify Prerequisites**
   Ensure Module 6 is COMPLETED before proceeding with Module 7

4. **Execute Module 7**
   Follow the instructions in module_implementation_tracking.md

### Step 5: Validation
After executing new modules, verify the upgrade was successful:

- [ ] Module 7 added to status.md
- [ ] Module 7 executed and marked COMPLETED
- [ ] implementation_plan/ directory created
- [ ] STATUS_README.md dashboard created
- [ ] All Module 7 deliverables present

## Common Upgrade Scenarios

### Scenario A: Project "Complete" but Module 7 Missing
**Symptoms**: Agent says project is ready for implementation, but no implementation_plan/ directory exists
**Solution**: Run this detection script, execute Module 7

### Scenario B: Old Project Resume
**Symptoms**: Resuming work on a project created before Module 7 was available
**Solution**: System will automatically detect and add Module 7

### Scenario C: Partial Upgrade
**Symptoms**: Some new modules present, others missing
**Solution**: Add all missing modules in sequence, execute in order

## Agent Instructions

When a user asks you to "continue" or "check for upgrades" or mentions this script:

1. **Read this script completely**
2. **Follow the steps in order**
3. **Execute any detected upgrades automatically**
4. **Notify the user of what was upgraded**
5. **Continue with normal project flow**

This ensures projects always benefit from the latest instruction system capabilities and prevents agents from thinking projects are complete when new modules are available.
