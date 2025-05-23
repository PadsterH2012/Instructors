# CRITICAL: READ FIRST - Tool Input Size Management

## URGENT: "Tool Input Too Large" Error Resolution

**PROBLEM IDENTIFIED**: The project instruction system is experiencing "tool input too large" errors despite micro-task frameworks.

**ROOT CAUSE**: LLD files (500-750 lines) and detailed task descriptions exceed tool input limits.

**MANDATORY SOLUTION**: All agents MUST follow the Enhanced Micro-Task Framework V2 before executing any tasks.

## CRITICAL RULES - MUST FOLLOW

### Rule 1: Tool Input Size Limits (MANDATORY)
- **save-file**: Maximum 300 lines per operation
- **str-replace-editor**: Maximum 200 lines per operation  
- **view**: Use view_range for files >100 lines (e.g., [1, 100], [101, 200])
- **Never process entire LLD files at once**

### Rule 2: LLD File Processing (MANDATORY)
- **DO NOT** copy entire LLD file contents
- **DO** use view_range to read specific sections
- **DO** reference LLD sections by line numbers in tasks
- **DO** extract only essential information for current micro-task

### Rule 3: File Creation Strategy (MANDATORY)
- **Step 1**: Create base file with save-file (max 300 lines)
- **Step 2**: Add sections with str-replace-editor (max 200 lines each)
- **Step 3**: Continue incrementally until complete
- **Never attempt to create large files in single operation**

### Rule 4: Task Description Limits (MANDATORY)
- **Single task**: Maximum 50 lines of description
- **Subtask**: Maximum 20 lines of description
- **Implementation step**: Maximum 10 lines of description

## EMERGENCY PROTOCOL

### If "Tool Input Too Large" Error Occurs:
1. **STOP** current operation immediately
2. **BREAK DOWN** the task into smaller components (max 20 lines each)
3. **USE view_range** for any file >100 lines
4. **EXTRACT** only minimal information needed
5. **REFERENCE** LLD files by line numbers, don't copy content
6. **RESUME** with smaller scope

### Error Prevention Checklist:
- [ ] Task description <50 lines?
- [ ] Using view_range for large files?
- [ ] File creation <300 lines?
- [ ] File editing <200 lines?
- [ ] Referencing LLD by line numbers only?

## FRAMEWORK LOCATION

**Enhanced Micro-Task Framework V2**: 
`../../project_working_files/working_files/tasks/micro_task_framework_v2.md`

**MANDATORY**: Read this framework before executing any tasks.

## IMPLEMENTATION EXAMPLES

### WRONG: Processing Entire LLD File
```
❌ view /path/to/db_lld_01.md (743 lines - TOO LARGE)
❌ Copy entire schema section to new file
```

### CORRECT: Using View Range
```
✅ view /path/to/db_lld_01.md [1, 100] (User entity only)
✅ Extract User entity info (max 50 lines)
✅ Reference: "Based on db_lld_01.md lines 1-100"
```

### WRONG: Large File Creation
```
❌ save-file with 500+ lines of content
```

### CORRECT: Incremental File Creation
```
✅ save-file with base structure (max 300 lines)
✅ str-replace-editor to add section 1 (max 200 lines)
✅ str-replace-editor to add section 2 (max 200 lines)
```

## AGENT EXECUTION REQUIREMENTS

### Before Starting Any Task:
1. **Read** micro_task_framework_v2.md completely
2. **Estimate** total content size needed
3. **Break down** if >300 lines total
4. **Plan** incremental approach
5. **Use** view_range for large files

### During Task Execution:
1. **Monitor** input sizes before tool calls
2. **Stop** if approaching limits
3. **Break down** further if needed
4. **Reference** instead of copying
5. **Build** incrementally

### If Errors Occur:
1. **Document** the error in debug log
2. **Reduce** scope by 50%
3. **Apply** emergency protocol
4. **Resume** with smaller tasks
5. **Report** persistent issues

## SUCCESS CRITERIA

### Task Execution Success:
- ✅ No "tool input too large" errors
- ✅ All tasks complete successfully
- ✅ Quality deliverables maintained
- ✅ Progress tracking functional
- ✅ Resume capability preserved

### Framework Effectiveness:
- ✅ Smooth progression through all modules
- ✅ Consistent task completion
- ✅ Maintainable file sizes
- ✅ Effective LLD information extraction
- ✅ Quality documentation despite size constraints

## ESCALATION

### If Framework V2 Fails:
1. **Reduce** task scope by 75%
2. **Use** reference-only approach (no content copying)
3. **Implement** absolute minimum viable version
4. **Document** limitations and workarounds
5. **Request** manual intervention if needed

## VALIDATION

Before proceeding with any module execution, agents MUST:
- [ ] Confirm understanding of tool input limits
- [ ] Acknowledge commitment to incremental approach
- [ ] Verify access to micro_task_framework_v2.md
- [ ] Test view_range functionality on sample file
- [ ] Demonstrate small file creation approach

**FAILURE TO FOLLOW THESE RULES WILL RESULT IN CONTINUED "TOOL INPUT TOO LARGE" ERRORS**

This framework update should resolve the persistent size errors and enable successful project instruction system execution.
