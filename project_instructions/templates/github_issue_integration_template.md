# GitHub Issue Integration Template

## GitHub Issue Creation and Management Process

This template provides the framework for integrating GitHub Issues with the existing file-based issue tracking system.

### Issue Creation Process

Execute the following GitHub issue creation steps when issues are discovered:

1. **Issue Assessment and Categorization**
   - **PRIORITY DETERMINATION**: Assess issue priority (HIGH, MEDIUM, LOW)
   - **IMPACT ANALYSIS**: Determine impact on project progress and functionality
   - **PHASE IDENTIFICATION**: Document which module/phase discovered the issue
   - **BLOCKER ASSESSMENT**: Determine if issue blocks progress to next phase

2. **GitHub Issue Creation**
   - **CREATE GITHUB ISSUE**: Use GitHub API or web interface to create issue
   - **TITLE FORMAT**: Use clear, descriptive title following pattern:
     ```
     [PRIORITY] Module [X] Phase [Y]: [Brief Issue Description]
     ```
   - **EXAMPLE TITLES**:
     ```
     [HIGH] Module 8 Phase 2: Docker container fails to start with exit code 1
     [MEDIUM] Module 8 Phase 4: API endpoint response time exceeds 2 seconds
     [LOW] Module 8 Phase 5: UI component alignment issue on mobile devices
     ```

3. **GitHub Issue Description Template**
   ```markdown
   ## Issue Summary
   **Priority**: [HIGH/MEDIUM/LOW]
   **Module**: [Module Number and Name]
   **Phase**: [Phase Number and Name]
   **Discovered Date**: [YYYY-MM-DD]
   **Impact**: [Brief impact description]
   
   ## Problem Description
   [Detailed description of the issue]
   
   ## Expected Behavior
   [What should happen]
   
   ## Actual Behavior
   [What actually happens]
   
   ## Error Messages/Logs
   ```
   [Include relevant error messages, stack traces, or log entries]
   ```
   
   ## Affected Files/Components
   - `path/to/file1.py` - [Description of how it's affected]
   - `path/to/file2.js` - [Description of how it's affected]
   
   ## Reproduction Steps
   1. [Step 1]
   2. [Step 2]
   3. [Step 3]
   
   ## Proposed Resolution
   [Suggested approach to fix the issue]
   
   ## GitHub Copilot Context
   **Framework**: [e.g., FastAPI, React, Docker]
   **Language**: [e.g., Python, JavaScript, YAML]
   **Dependencies**: [Relevant packages/libraries]
   **Environment**: [Docker, local, production]
   
   ## Local Issue Reference
   **Local Issue ID**: [Reference to current_issues.md entry]
   **Local File**: `project_working_files/issues/current_issues.md`
   ```

4. **Issue Labeling and Assignment**
   - **PRIORITY LABELS**: Add `priority-high`, `priority-medium`, or `priority-low`
   - **MODULE LABELS**: Add `module-[number]` (e.g., `module-8`)
   - **PHASE LABELS**: Add `phase-[name]` (e.g., `phase-environment-setup`)
   - **TYPE LABELS**: Add appropriate type labels (`bug`, `enhancement`, `documentation`)
   - **BLOCKER LABEL**: Add `blocker` if issue prevents progress
   - **ASSIGNMENT**: Assign to appropriate team member or self-assign if agent will resolve

### Dual Tracking System Integration

Execute the following steps to maintain both GitHub and local issue tracking:

1. **Local Issue File Update**
   - **ADD GITHUB REFERENCE**: Include GitHub issue URL in local `current_issues.md`
   - **CROSS-REFERENCE**: Add GitHub issue number to local issue entry
   - **SYNC STATUS**: Ensure status consistency between GitHub and local files

2. **Local Issue Entry Format with GitHub Integration**
   ```markdown
   ### Issue #[LOCAL_ID]
   **Status**: [OPEN/IN_PROGRESS/BLOCKED/RESOLVED]
   **GitHub Issue**: [#GITHUB_ISSUE_NUMBER](https://github.com/[owner]/[repo]/issues/[number])
   **Summary**: [Brief issue description]
   **Phase Discovered**: [Module X.Y - Phase Name]
   **Description**: [Detailed description]
   **Impact**: [Impact assessment]
   **Proposed Resolution**: [Suggested fix]
   **Priority**: [HIGH/MEDIUM/LOW]
   **Date Logged**: [YYYY-MM-DD]
   **Last Updated**: [YYYY-MM-DD]
   **GitHub Status**: [open/closed/in-progress]
   **Assigned To**: [GitHub username or "unassigned"]
   ```

### GitHub Issue Status Monitoring

Execute the following monitoring steps during Module 8 phases:

1. **Pre-Phase Issue Status Check**
   - **QUERY GITHUB**: Check status of all open issues related to current module
   - **UPDATE LOCAL**: Sync GitHub status changes to local `current_issues.md`
   - **BLOCKER ASSESSMENT**: Identify any blocker issues that must be resolved
   - **ASSIGNMENT CHECK**: Verify critical issues are assigned and being worked on

2. **GitHub API Integration Commands**
   ```bash
   # Check issue status
   gh issue list --label "module-8" --state open
   
   # Update issue status
   gh issue edit [issue_number] --add-label "in-progress"
   
   # Close resolved issue
   gh issue close [issue_number] --comment "Issue resolved in commit [commit_hash]"
   
   # Assign issue to self
   gh issue edit [issue_number] --assignee @me
   ```

3. **Automated Status Sync Process**
   - **FETCH GITHUB STATUS**: Query GitHub API for current issue status
   - **COMPARE LOCAL STATUS**: Check for discrepancies with local tracking
   - **UPDATE LOCAL FILES**: Sync any status changes to local `current_issues.md`
   - **LOG CHANGES**: Document any status changes in debug log if enabled

### Conflict Detection and Resolution

Execute the following conflict management steps:

1. **Pre-Merge Conflict Detection**
   - **BRANCH COMPARISON**: Compare current branch with main/master for conflicts
   - **ISSUE RESOLUTION IMPACT**: Check if resolved issues create integration conflicts
   - **DEPENDENCY ANALYSIS**: Verify issue fixes don't break other components
   - **TEST VALIDATION**: Run relevant tests to detect integration issues

2. **Conflict Resolution Process**
   - **IDENTIFY CONFLICTS**: Use git tools to identify specific conflict areas
   - **ANALYZE IMPACT**: Determine if conflicts affect issue resolution
   - **RESOLVE CONFLICTS**: Merge changes while preserving issue fixes
   - **VALIDATE RESOLUTION**: Ensure conflict resolution doesn't reintroduce issues
   - **UPDATE GITHUB**: Comment on GitHub issue with conflict resolution details

3. **Post-Resolution Validation**
   - **RUN TESTS**: Execute comprehensive test suite after conflict resolution
   - **VERIFY FUNCTIONALITY**: Confirm all features work as expected
   - **UPDATE DOCUMENTATION**: Document any changes made during conflict resolution
   - **CLOSE GITHUB ISSUE**: Update GitHub issue status to closed with resolution details

### Automated Issue Assignment and Resolution

Execute the following automation steps for issue management:

1. **Blocker Issue Detection**
   - **SCAN FOR BLOCKERS**: Identify issues labeled as `blocker` that are unassigned
   - **PRIORITY ASSESSMENT**: Evaluate impact on current phase progression
   - **AUTO-ASSIGNMENT**: Self-assign blocker issues if no other assignee
   - **ESCALATION**: Flag issues that require external expertise or resources

2. **Issue Resolution Workflow**
   - **WORK ASSIGNMENT**: Begin resolution process for assigned issues
   - **PROGRESS UPDATES**: Update GitHub issue with progress comments
   - **BRANCH MANAGEMENT**: Create feature branch for complex issue resolution if needed
   - **TESTING**: Validate fix with appropriate tests before marking resolved

3. **Resolution Completion Process**
   - **VALIDATION TESTING**: Run comprehensive tests to ensure fix works
   - **INTEGRATION TESTING**: Verify fix doesn't break other functionality
   - **DOCUMENTATION UPDATE**: Update relevant documentation with fix details
   - **GITHUB CLOSURE**: Close GitHub issue with detailed resolution comment
   - **LOCAL SYNC**: Update local `current_issues.md` with resolution details

### Integration with Module 8 Phases

Add the following to each Module 8 phase "Issue Tracking and Resolution" step:

```markdown
5. **GitHub Issue Integration and Resolution**
   - **GITHUB STATUS CHECK**: Query GitHub for all open issues related to current module
   - **LOCAL SYNC**: Update local current_issues.md with any GitHub status changes
   - **BLOCKER RESOLUTION**: Address any blocker issues before proceeding to next phase
   - **NEW ISSUE CREATION**: Create GitHub issues for any new problems discovered
   - **CONFLICT DETECTION**: Check for potential conflicts with resolved issues
   - **ASSIGNMENT VALIDATION**: Ensure critical issues are assigned and progressing
   - **RESOLUTION TESTING**: Validate that resolved issues don't introduce new problems
```

### Copilot Integration Optimization

Format GitHub issues to maximize GitHub Copilot effectiveness:

1. **Structured Context Provision**
   - **CLEAR ERROR PATTERNS**: Include specific error messages and stack traces
   - **CODE CONTEXT**: Reference specific files, functions, and line numbers
   - **FRAMEWORK CONTEXT**: Specify frameworks, libraries, and versions
   - **ENVIRONMENT DETAILS**: Include Docker, OS, and dependency information

2. **Copilot-Friendly Formatting**
   - **CODE BLOCKS**: Use proper syntax highlighting for code snippets
   - **FILE PATHS**: Include full relative paths to affected files
   - **EXPECTED VS ACTUAL**: Clear comparison of expected and actual behavior
   - **MINIMAL REPRODUCTION**: Provide minimal code example that reproduces issue

### Validation Checklist

Before proceeding to next phase, verify:
- [ ] All discovered issues have been created in GitHub with proper labels
- [ ] Local `current_issues.md` includes GitHub issue references
- [ ] GitHub issue status is synchronized with local tracking
- [ ] All blocker issues are assigned and being actively resolved
- [ ] No unresolved conflicts exist between issue fixes and current branch
- [ ] Resolved issues have been validated with appropriate tests
- [ ] GitHub issues are properly closed with resolution details
- [ ] Local issue tracking files are updated with final status
