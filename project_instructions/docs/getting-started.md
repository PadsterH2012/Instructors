# 🚀 Getting Started

## Prerequisites

Before running the system, ensure you have:

- **AI Agent Access**: Access to an AI agent with file creation and web search capabilities
- **Required Tools**: The agent must have access to:
  - `brave_web_search` tool for technology research
  - `Context7` tools (`resolve-library-id` and `get-library-docs`) for component research
  - File creation tools (`save-file`, `str-replace-editor`)

## Verification Steps

1. **Check Folder Structure**: Verify the `project_instructions/` folder contains:
   ```bash
   project_instructions/
   ├── instruction_modules/     # Should contain 9 .md files
   ├── project_input/
   │   └── project_plan.txt    # Your project requirements
   ├── project_instruction_index.md
   └── templates/
   ```

2. **Verify Project Plan**: Ensure `project_input/project_plan.txt` contains your specific project requirements

3. **Check Module Count**: Verify all 9 instruction modules are present:
   - `module_initial_setup.md`
   - `module_research_phase.md`
   - `module_documentation_development.md`
   - `module_lld_structure_creation.md`
   - `module_task_gap_management.md`
   - `module_validation_planning.md`
   - `module_high_level_planning.md`
   - `module_implementation_tracking.md`
   - `module_development_implementation.md`

## Basic Execution

To initiate the system, provide this exact command to your AI agent:

```
Follow the instructions in project_instructions/project_instruction_index.md and resume from current status.
```

## What Happens During Execution

1. **Agent reads** `project_instruction_index.md` to understand the system
2. **Checks status** in `project_working_files/status.md` (if exists) to determine resume point
3. **Creates isolated structure** in `project_working_files/` (completely separate from instructions)
4. **Executes modules** in order based on status and prerequisites
5. **Updates progress** in status file as work progresses
6. **Creates debug logs** (if `--debug` enabled) for troubleshooting

## Resume Capability

The system automatically resumes from interruption points:
- **Fresh Start**: If no `project_working_files/` exists, starts with Module 0
- **Resume**: If status file exists, validates completed work and continues from correct point
- **Validation**: Checks that prerequisite modules are properly completed before proceeding

## Quick Verification Commands

**Check Instruction Integrity**:
```bash
# Verify all 9 modules exist
ls project_instructions/instruction_modules/ | wc -l
# Should return: 9

# Check for required files
ls project_instructions/project_input/project_plan.txt
ls project_instructions/project_instruction_index.md
```

**Monitor Progress**:
```bash
# Check current status
cat project_working_files/status.md

# View debug logs (if debug mode enabled)
cat project_working_files/debug_log.md
```

## Next Steps

- **[System Overview](system-overview.md)** - Understand the architecture and workflow
- **[Module Reference](module-reference.md)** - Detailed documentation of all modules
- **[Debug Options](debug-options.md)** - Enable debug mode for troubleshooting
- **[Simulate Mode](simulate-mode.md)** - Test instruction logic safely
