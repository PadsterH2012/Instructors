# Module: Task Breakdown System (CORE FUNCTIONALITY)

## CRITICAL: Quality-Focused Task Management Rules

**MANDATORY TASK BREAKDOWN REQUIREMENT**:
- Complex tasks MUST be broken down into logical, manageable components
- Agents MUST NOT attempt complex tasks without proper organization
- Each subtask MUST have clear, measurable completion criteria
- Focus on QUALITY and COMPLETENESS rather than artificial time constraints
- Hidden task files track progress without cluttering main documentation

**TASK ORGANIZATION PRINCIPLES**:
- **Logical Components**: Break tasks by functional areas, not time estimates
- **Quality Focus**: Each component must be completed thoroughly before proceeding
- **Dependency Management**: Organize tasks based on prerequisites and dependencies
- **Comprehensive Coverage**: Ensure all required deliverables are included
- **NO TIME PRESSURE**: Take the time needed to create quality, detailed work

**CRITICAL: TOOL INPUT SIZE MANAGEMENT**:
- **MANDATORY**: Follow micro_task_framework_v2.md to prevent "tool input too large" errors
- **File Creation**: Maximum 300 lines per save-file operation
- **File Editing**: Maximum 200 lines per str-replace-editor operation
- **LLD Processing**: Use view_range for large files, never process entire LLD files at once
- **Reference Approach**: Reference LLD sections by line numbers, don't copy large content
- **Progressive Implementation**: Build files incrementally, not all at once

---

## Task Breakdown Process

### Step 1: Task Analysis
When encountering any complex task, agents MUST:

1. **Assess Task Complexity**
   - Read the full task requirements thoroughly
   - Identify all deliverables and quality requirements
   - Determine if task involves multiple domains or components

2. **Identify Logical Components**
   - Break task into logical, functional components
   - Each component should be independent when possible
   - Identify dependencies between components
   - Prioritize components based on dependencies

3. **Create Quality-Focused Subtasks**
   - Each subtask = one logical component or deliverable
   - Clear completion criteria focused on quality and completeness
   - Specific deliverable or outcome
   - No ambiguous requirements
   - Allow sufficient time for thorough, detailed work

### Step 2: Hidden Task File Creation

For any task requiring breakdown, create a hidden task file:

**File Location**: `working_files/tasks/[module]_[task_name]_breakdown.md`

**Template**:
```markdown
# Task Breakdown: [Task Name]

## Original Task
[Copy the original complex task description here]

## Task Scope and Requirements
[Detailed analysis of what needs to be accomplished]

## Component Breakdown

### Component 1: [Name]
- **Prerequisites**: [What must be done first]
- **Deliverable**: [Specific output with quality requirements]
- **Completion Criteria**: [How to know it's done thoroughly]
- **Quality Standards**: [What constitutes complete, quality work]
- **Status**: [ ] Not Started / [ ] In Progress / [x] Complete

### Component 2: [Name]
- **Prerequisites**: [What must be done first]
- **Deliverable**: [Specific output with quality requirements]
- **Completion Criteria**: [How to know it's done thoroughly]
- **Quality Standards**: [What constitutes complete, quality work]
- **Status**: [ ] Not Started / [ ] In Progress / [x] Complete

[Continue for all components...]

## Progress Tracking
- **Started**: [Timestamp]
- **Current Component**: [Number and name]
- **Completed**: [X/Y components]
- **Quality Notes**: [Notes on thoroughness and completeness]
- **Issues Encountered**: [List any problems]

## Completion Validation
- [ ] All components completed to quality standards
- [ ] All deliverables created with required detail
- [ ] Original task requirements fully met
- [ ] Quality validation passed
- [ ] Documentation is comprehensive and detailed
```

### Step 3: Execution Process

1. **Work One Component at a Time**
   - Complete current component thoroughly and completely
   - Focus on quality and comprehensive coverage
   - Update status in breakdown file
   - Validate completion criteria and quality standards met
   - Move to next component only after current one is fully complete

2. **Progress Updates**
   - Update breakdown file after each component
   - Log any issues or blockers
   - Note quality achievements and thoroughness
   - Document any additional research or detail added

3. **Completion Validation**
   - Verify all components complete to quality standards
   - Check original task requirements fully met
   - Ensure all deliverables are comprehensive and detailed
   - Update main status tracking

## Integration with Main Modules

### For Research Tasks (Module 1)
Example breakdown for "Technology Stack Research":

```
Component 1: Requirements Analysis - Read project_plan.txt and extract all technology requirements
Component 2: Framework Research - Comprehensive search for web framework best practices and current recommendations
Component 3: Infrastructure Research - Thorough research on containerization, deployment, and infrastructure best practices
Component 4: Component Compatibility - Research integration between selected technologies
Component 5: Documentation Creation - Create comprehensive research_findings.md with detailed analysis and sources
```

### For Documentation Tasks (Module 2)
Example breakdown for "Create Project HLD":

```
Component 1: Research Review - Thorough review of all research findings and validated tech stack
Component 2: Architecture Design - Create comprehensive system architecture with detailed component descriptions
Component 3: Component Interactions - Document detailed component interactions and data flows
Component 4: Technology Integration - Document how selected technologies work together
Component 5: Quality Review - Comprehensive review and validation of HLD content for completeness
```

### For LLD Tasks (Module 3)
Example breakdown for "Complete Database LLD Creation":

```
Component 1: Database Schema Design - Create comprehensive database schema with detailed entity relationships
Component 2: Data Models - Develop detailed data models with validation rules and constraints
Component 3: Query Optimization - Design query optimization strategies and indexing approaches
Component 4: Security Implementation - Document database security measures and access controls
Component 5: Performance Considerations - Document performance optimization and scaling strategies
Component 6: Documentation and Index - Create comprehensive index and cross-references
```

## Troubleshooting Complex Tasks

### When Agent Struggles with a Task:
1. **Stop Current Approach**
   - Don't continue with struggling approach
   - Acknowledge the task requires better organization

2. **Apply Quality-Focused Breakdown**
   - Create breakdown file immediately
   - Break into logical, manageable components
   - Focus on one component at a time
   - Prioritize quality and completeness over speed

3. **Resume with Component Focus**
   - Work one component thoroughly and completely
   - Update progress after each completion
   - Ensure quality standards are met before proceeding
   - Take the time needed for comprehensive work

### Common Complex Task Patterns:
- **Research Tasks**: Break by research domain/technology area
- **Documentation Tasks**: Break by functional area or system component
- **LLD Creation Tasks**: Break by domain (database, devops, uxui, coding, testing)
- **Validation Tasks**: Break by validation domain or criteria type

## Status Integration

Update main `status.md` file only when:
- Starting task breakdown process
- Completing all micro-tasks in a breakdown
- Encountering blockers that prevent progress

The hidden task files provide detailed tracking without cluttering the main status system.
