# 🐛 Debug Options

## Overview

Debug mode provides comprehensive logging of agent reasoning and decision-making processes. It helps verify that agents are following instructions correctly and not using past knowledge inappropriately.

## Enabling Debug Mode

Add the `--debug` flag to your execution command:

```
Follow the instructions in project_instructions/project_instruction_index.md and resume from current status.

--debug
```

## Debug Log Location

Debug information is written to: `project_working_files/debug_log.md`

This file is:
- Created automatically when debug mode is enabled
- Located in the safe working files area
- Can be safely deleted without affecting instructions
- Updated throughout execution with detailed logging

## Debug Information Captured

When debug mode is enabled, the system logs:

### 🧠 Agent Reasoning
- **Decision-making processes** and rationale behind choices
- **Problem-solving approaches** and methodology
- **Logic flow** through complex instruction sequences
- **Validation reasoning** for checkpoint completion

### 🔧 Tool Usage
- **Every `brave_web_search` query** with reasoning for the search
- **All `Context7` tool usage** with justification for library selection
- **Research methodology** and source evaluation
- **API call efficiency** and optimization decisions

### ✅ Validation Steps
- **Checkpoint completion** verification and results
- **Module prerequisite** validation processes
- **Status tracking** updates and reasoning
- **Resume capability** decision-making

### 🚨 Assumption Detection
- **Flags when agents might be using past knowledge** vs. research
- **Identifies potential instruction deviations** or shortcuts
- **Tracks adherence to research-first principles**
- **Monitors for inappropriate assumptions** about technology stacks

### 📊 Progress Tracking
- **Module transitions** and completion criteria
- **Status updates** with detailed reasoning
- **Task breakdown** decision-making processes
- **Resume point** determination logic

### 🔍 Source Documentation
- **All research sources** and references used
- **Quality assessment** of research findings
- **Cross-validation** of multiple sources
- **Research gap identification** and resolution

## Debug Log Format

### Entry Structure
```
[TIMESTAMP] [MODULE] [CATEGORY] [DESCRIPTION]
```

### Example Debug Entries

**Reasoning Entry**:
```
[2024-12-19 14:30:22] [Module 1] [REASONING] Choosing React over Vue for frontend because project_plan.txt specifies need for large community support and extensive component library ecosystem. Research shows React has 200k+ GitHub stars vs Vue's 200k+, but React has larger job market presence based on 2024 survey data.
```

**Tool Usage Entry**:
```
[2024-12-19 14:30:25] [Module 1] [TOOL_USAGE] brave_web_search: "React vs Vue 2024 comparison performance" - Need current performance benchmarks to validate technology choice. Previous search covered community aspects, now need technical performance data.
```

**Validation Entry**:
```
[2024-12-19 14:30:30] [Module 1] [VALIDATION] Module 1 completion criteria met: (1) Technology stack research completed with 5 sources, (2) Component compatibility verified through Context7, (3) Industry standards research completed, (4) All research files created in working_files/research/. Ready to proceed to Module 2.
```

**Assumption Detection Entry**:
```
[2024-12-19 14:30:35] [Module 2] [ASSUMPTION_ALERT] Agent attempted to use knowledge about "typical React project structure" without research validation. Redirecting to research-first approach for project structure decisions.
```

## Using Debug Logs for Troubleshooting

### Verify Instruction Compliance
Debug logs help identify:
- Whether agents are following instructions vs. using past knowledge
- Adherence to research-first principles
- Proper tool usage and methodology
- Validation checkpoint compliance

### Quality Assurance
Debug logs reveal:
- Quality and sources of research conducted
- Decision-making rationale and logic
- Problem-solving approaches and effectiveness
- Task breakdown and management strategies

### Performance Analysis
Debug logs show:
- Tool usage efficiency and optimization
- Research methodology effectiveness
- Time spent on different activities
- Resume capability functionality

### Issue Identification
Debug logs help identify:
- Instruction gaps or ambiguities
- Agent confusion or misunderstanding
- Tool usage problems or limitations
- Process bottlenecks or inefficiencies

## Debug Mode Benefits

### For Users
- ✅ **Transparency** into agent decision-making
- ✅ **Quality assurance** for research and reasoning
- ✅ **Troubleshooting support** when issues arise
- ✅ **Process validation** and compliance checking

### For System Improvement
- ✅ **Instruction refinement** based on agent behavior
- ✅ **Process optimization** through performance analysis
- ✅ **Quality enhancement** through assumption detection
- ✅ **Tool usage optimization** through usage pattern analysis

### For Project Management
- ✅ **Progress visibility** with detailed status tracking
- ✅ **Decision documentation** for future reference
- ✅ **Risk identification** through early problem detection
- ✅ **Quality metrics** through validation tracking

## Debug Log Management

### File Size Management
- Debug logs can grow large during complex projects
- Consider archiving old debug logs if they become unwieldy
- Focus on recent entries for current troubleshooting

### Privacy Considerations
- Debug logs may contain detailed project information
- Review logs before sharing for troubleshooting
- Consider sanitizing sensitive information if needed

### Analysis Tools
- Use text search to find specific categories or modules
- Look for patterns in assumption detection alerts
- Track tool usage efficiency over time
- Monitor validation checkpoint compliance

## Common Debug Patterns

### Successful Execution Pattern
```
[TIMESTAMP] [Module X] [REASONING] Clear rationale for decisions
[TIMESTAMP] [Module X] [TOOL_USAGE] Appropriate research with justification
[TIMESTAMP] [Module X] [VALIDATION] All criteria met, proceeding
```

### Problem Pattern
```
[TIMESTAMP] [Module X] [ASSUMPTION_ALERT] Using past knowledge inappropriately
[TIMESTAMP] [Module X] [TOOL_USAGE] Insufficient research for decision
[TIMESTAMP] [Module X] [VALIDATION] Criteria not met, need additional work
```

### Research Quality Pattern
```
[TIMESTAMP] [Module 1] [TOOL_USAGE] Multiple diverse sources consulted
[TIMESTAMP] [Module 1] [REASONING] Cross-validation of research findings
[TIMESTAMP] [Module 1] [VALIDATION] Research quality meets standards
```

## Integration with Other Systems

### Simulate Mode
- Debug mode can be combined with simulate mode
- Provides detailed reasoning for simulated actions
- Helps validate simulation accuracy and logic

### Issue Tracking
- Debug logs can help identify issues for tracking
- Provides context for problem resolution
- Documents decision-making that led to issues

### Resume System
- Debug logs help understand resume decision-making
- Provide context for status tracking updates
- Document validation processes for resume points

## Best Practices

### When to Use Debug Mode
- **First-time execution** of complex projects
- **Troubleshooting** when issues arise
- **Quality assurance** for critical projects
- **System validation** and testing

### Debug Log Review
- **Regular monitoring** during execution
- **Post-execution analysis** for lessons learned
- **Pattern identification** for process improvement
- **Issue correlation** with debug events

### Performance Considerations
- Debug mode adds overhead to execution
- Consider disabling for routine, well-tested operations
- Use selectively for complex or problematic areas
- Balance transparency needs with performance requirements
