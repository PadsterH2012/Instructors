# 🔧 Troubleshooting

## Common Issues and Solutions

### Tool Input Size Errors

**Problem**: "Tool input too large" errors during execution

**Symptoms**:
- Agent fails to process large LLD files
- save-file tool rejects content over 300 lines
- str-replace-editor tool rejects content over 200 lines

**Solutions**:
1. **Follow Micro-Task Framework V2**: Use the enhanced framework in `working_files/tasks/micro_task_framework_v2.md`
2. **Use view_range for large files**: Never process entire large files, use specific line ranges
3. **Reference-based approach**: Reference content instead of copying it
4. **Break down large operations**: Split large file operations into smaller chunks

**Prevention**:
- Always check file sizes before processing
- Use view_range parameter for file viewing
- Follow the 300/200 line limits strictly

---

### Resume Capability Issues

**Problem**: Agent cannot resume from interruption point

**Symptoms**:
- Agent starts from Module 0 despite existing work
- Status file not found or corrupted
- Agent doesn't recognize completed modules

**Solutions**:
1. **Check status file**: Verify `project_working_files/status.md` exists and is readable
2. **Validate file structure**: Ensure `project_working_files/` directory structure is intact
3. **Manual status update**: Update status file with correct module completion status
4. **Use high-level plan**: If `high_level_plan.md` exists, it takes priority over status.md

**Prevention**:
- Regularly backup `project_working_files/` directory
- Monitor status file updates during execution
- Use debug mode to track status changes

---

### Research Quality Issues

**Problem**: Poor quality or outdated research results

**Symptoms**:
- Technology choices based on old information
- Incompatible component selections
- Missing current best practices

**Solutions**:
1. **Check date context**: Verify `system_info.env` contains current date
2. **Use current year in searches**: Include "2024" or current year in search queries
3. **Cross-validate sources**: Use multiple sources for important decisions
4. **Update research**: Re-run research with current date context

**Prevention**:
- Always include current year in research queries
- Use multiple diverse sources for validation
- Regularly update date context for long-running projects

---

### Module Dependency Issues

**Problem**: Module fails due to missing prerequisites

**Symptoms**:
- Module cannot find required input files
- References to non-existent previous work
- Validation failures for prerequisite completion

**Solutions**:
1. **Validate prerequisites**: Check that all required previous modules are completed
2. **Verify file locations**: Ensure all expected input files exist in correct locations
3. **Review status tracking**: Confirm status file accurately reflects completed work
4. **Manual completion**: Complete missing prerequisite work before proceeding

**Prevention**:
- Follow sequential module execution order
- Validate completion before proceeding to next module
- Maintain accurate status tracking throughout

---

### Docker Issues (Module 8)

**Problem**: Docker containers fail to start or build

**Symptoms**:
- Docker build failures
- Container startup errors
- Network connectivity issues

**Solutions**:
1. **Docker system purge**: Use `docker system prune -a --volumes` for clean state
2. **Rebuild without cache**: Use `docker-compose build --no-cache`
3. **Check configurations**: Validate Dockerfile and docker-compose.yml syntax
4. **Review logs**: Use `docker-compose logs` to identify specific issues

**Prevention**:
- Use Docker troubleshooting guidance in Module 8
- Test Docker setup before complex operations
- Keep Docker configurations simple and well-documented

---

### Issue Tracking Problems

**Problem**: Issues not being tracked or resolved properly

**Symptoms**:
- Problems recurring without resolution
- Workarounds becoming permanent
- No visibility into project health

**Solutions**:
1. **Review tracking files**: Check `issues/current_issues.md` and `issues/current_workarounds.md`
2. **Update issue status**: Ensure all discovered issues are logged with proper status
3. **Prioritize resolution**: Address HIGH priority issues before proceeding
4. **Document resolutions**: Record how issues were resolved for future reference

**Prevention**:
- Log issues immediately when discovered
- Review issue tracking at each phase completion
- Maintain clear resolution plans for all workarounds

---

### Simulation Accuracy Issues

**Problem**: Simulation predictions don't match actual execution

**Symptoms**:
- Simulated operations differ significantly from actual execution
- Time estimates are consistently wrong
- Issues not predicted by simulation

**Solutions**:
1. **Review simulation level**: Ensure appropriate complexity level for project
2. **Check working directory**: Verify PWD context is established correctly
3. **Update simulation logic**: Improve simulation based on accuracy feedback
4. **Use accuracy tracking**: Assess and document simulation accuracy for improvement

**Prevention**:
- Establish working directory context at start
- Use appropriate simulation level for project complexity
- Regularly assess and improve simulation accuracy

## Debug Mode Troubleshooting

### Enable Debug Mode
```
Follow the instructions in project_instructions/project_instruction_index.md and resume from current status.

--debug
```

### Debug Log Analysis

**Check for common patterns**:
- **Assumption alerts**: Look for inappropriate use of past knowledge
- **Tool usage**: Verify appropriate research methodology
- **Validation failures**: Identify checkpoint compliance issues
- **Decision rationale**: Review reasoning for major decisions

**Debug log location**: `project_working_files/debug_log.md`

## File Structure Validation

### Verify Core Structure
```bash
# Check instruction modules
ls project_instructions/instruction_modules/ | wc -l
# Should return: 9

# Check required files
ls project_instructions/project_input/project_plan.txt
ls project_instructions/project_instruction_index.md

# Check working files structure
ls project_working_files/status.md
ls project_working_files/issues/
```

### Validate File Permissions
- Ensure all files are readable by the agent
- Check that working directories are writable
- Verify no permission conflicts with file operations

## Performance Issues

### Large Project Handling
- Use task breakdown for complex projects
- Implement micro-task framework for large operations
- Monitor memory usage during execution
- Break down large files into manageable chunks

### API Rate Limiting
- Monitor API usage across modules
- Use research efficiently with targeted queries
- Implement appropriate delays between API calls
- Cache research results when possible

## Recovery Procedures

### Corrupted Working Files
1. **Backup current state**: Save any recoverable work
2. **Clean working directory**: Remove corrupted files
3. **Restart from last good state**: Use status tracking to identify resume point
4. **Validate recovery**: Ensure all required files are properly restored

### Module Execution Failures
1. **Identify failure point**: Use debug logs to pinpoint issue
2. **Address root cause**: Fix underlying problem before retry
3. **Update status**: Ensure status tracking reflects current state
4. **Resume execution**: Continue from appropriate point

### System State Issues
1. **Check system requirements**: Verify all tools and dependencies
2. **Validate environment**: Ensure proper execution environment
3. **Reset if necessary**: Clean restart with fresh environment
4. **Document issues**: Log problems for future prevention

## Prevention Best Practices

### Regular Monitoring
- Monitor execution progress regularly
- Check debug logs for early warning signs
- Validate file structure integrity periodically
- Review issue tracking for emerging problems

### Quality Assurance
- Use debug mode for complex or critical projects
- Validate prerequisites before each module
- Follow size management guidelines strictly
- Maintain comprehensive documentation

### System Maintenance
- Keep instruction system updated
- Regular backup of working files
- Monitor system resource usage
- Update date context for long-running projects

## Getting Help

### Information Gathering
1. **Enable debug mode** for detailed logging
2. **Check status file** for current state
3. **Review issue tracking** for known problems
4. **Validate file structure** for integrity

### Documentation Review
- **[Getting Started](getting-started.md)** - Basic execution guidance
- **[System Overview](system-overview.md)** - Architecture understanding
- **[Module Reference](module-reference.md)** - Detailed module documentation
- **[Debug Options](debug-options.md)** - Debug mode usage

### Problem Reporting
When reporting issues, include:
- Current module and phase
- Error messages or symptoms
- Debug log excerpts (if available)
- File structure validation results
- Steps to reproduce the problem
