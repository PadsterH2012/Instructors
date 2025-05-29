# Update Request Directory

## Purpose
This directory is for submitting update requests to the project instruction system. Place your update request files here to have them processed by the System Update Processor module.

## How to Submit an Update Request

### 1. Create Update Request File
Create a `.txt` file in this directory with your update request. Use a descriptive filename:
- `add_new_feature_request.txt`
- `fix_module_issue_request.txt`
- `enhance_workflow_request.txt`

### 2. Update Request Format
Structure your request clearly:

```
UPDATE REQUEST: [Brief Title]

DESCRIPTION:
[Detailed description of what needs to be changed/added]

AFFECTED MODULES:
[List which instruction modules will be impacted]

SPECIFIC CHANGES REQUIRED:
1. [Change 1]
2. [Change 2]
3. [Change 3]

RATIONALE:
[Why this change is needed]

EXPECTED OUTCOME:
[What should happen after the change is implemented]

VALIDATION REQUIREMENTS:
[How to verify the change works correctly]
```

### 3. Processing
Once you place a `.txt` file here, use the System Update Processor module:
- The agent will read your request file
- Create an isolated working environment
- Break down the work into tasks
- Execute the changes safely
- Archive the request and working files
- Commit changes to git

## Example Update Request

**Filename**: `add_git_integration_example.txt`

```
UPDATE REQUEST: Add Git Integration to All Modules

DESCRIPTION:
Add git commit steps to all instruction modules so that each module completion 
creates a meaningful git commit with progress tracking.

AFFECTED MODULES:
- module_initial_setup.md
- module_research_phase.md
- module_documentation_development.md
- All other instruction modules

SPECIFIC CHANGES REQUIRED:
1. Add git commit section to each module before validation checkpoint
2. Create standardized commit message format
3. Update validation checklists to include git verification
4. Ensure git repository is clean after each module

RATIONALE:
This provides better progress tracking and creates professional development 
workflow with clear milestones marked in git history.

EXPECTED OUTCOME:
Each module completion will result in a git commit with meaningful message 
describing what was accomplished in that module.

VALIDATION REQUIREMENTS:
- All modules have git commit integration
- Commit messages follow consistent format
- Git repository remains clean throughout process
- No existing functionality is broken
```

## Safety Features

### Automatic Processing
- ✅ Git synchronization before changes
- ✅ Isolated working environment for each request
- ✅ Complete backup of modified files
- ✅ Systematic task breakdown and tracking
- ✅ Validation at each step
- ✅ Automatic archiving of request and work files

### What Gets Archived
After processing, the following are moved to `archivebin/`:
- Your original request file
- The complete working directory with task tracking
- Backups of any modified files

### Git Integration
- All changes are committed with meaningful messages
- Complete audit trail of system modifications
- Easy rollback capability if issues are discovered

## Best Practices

### Writing Good Update Requests
1. **Be Specific**: Clearly describe what needs to change
2. **Identify Impact**: List which modules will be affected
3. **Provide Context**: Explain why the change is needed
4. **Include Validation**: Describe how to verify success
5. **Consider Dependencies**: Note any related changes needed

### When to Use This Process
✅ **Use for**:
- Adding new features to instruction modules
- Fixing bugs in the instruction system
- Enhancing existing workflows
- Updating templates or documentation
- Modifying system processes

❌ **Don't use for**:
- Regular project development work
- Creating user project files
- General file management
- Non-instruction-system changes

## File Naming Conventions

### Request Files
- Use descriptive names: `add_feature_name.txt`
- Include action: `fix_`, `add_`, `enhance_`, `update_`
- Keep names concise but clear

### Avoid
- Generic names like `request.txt` or `update.txt`
- Special characters or spaces in filenames
- Very long filenames

## Status Tracking

### During Processing
The agent creates a unique working directory with:
- Task breakdown file
- Progress tracking
- Validation checkpoints
- Backup documentation

### After Completion
- Request file archived with timestamp
- Working directory archived with timestamp
- Changes committed to git with descriptive message
- System documentation updated as needed

## Troubleshooting

### If Your Request Isn't Processed
1. Check that the file is a `.txt` file
2. Verify the file is in the correct directory
3. Ensure the request is clearly written
4. Make sure you're requesting instruction system changes only

### If Issues Occur During Processing
The system includes:
- Automatic backup creation
- Rollback procedures
- Error documentation
- Recovery processes

## Support

For questions about:
- **Request format**: See examples above
- **System capabilities**: Review instruction module documentation
- **Processing issues**: Check git history and archivebin/ for details
- **Rollback needs**: Use emergency rollback procedures in the System Update Processor module
