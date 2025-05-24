# 🎭 Simulate Mode

## Overview

Simulate mode provides risk-free testing of instruction logic with scalable complexity levels and targeted switches. It logs all actions that would be performed without actually executing them, making it perfect for testing and validation.

## Execution Commands

### Basic Simulation
```
Follow the instructions in project_instructions/project_instruction_index.md and resume from current status.

--simulate
```

### Level-Based Simulation
```
Follow the instructions in project_instructions/project_instruction_index.md and resume from current status.

--simulate-basic     # Level 1-3: Simple projects
--simulate-medium    # Level 4-6: Complex projects
--simulate-intensive # Level 7-9: Enterprise projects
```

### File-Free Logic Testing
```
Follow the instructions in project_instructions/project_instruction_index.md and resume from current status.

--simulate-logic-only    # Pure logic flow testing - no file operations
```

### Switch-Based Simulation
```
Follow the instructions in project_instructions/project_instruction_index.md and resume from current status.

--simulate-medium --simulate-testing --simulate-debug
```

## Simulation Levels (1-9)

### Level 1-3: Basic Projects
- **Level 1**: Static website (HTML/CSS/JS) - 1 API call
- **Level 2**: Basic dynamic site with database - 1 API call
- **Level 3**: Simple web app with authentication - 1 API call

### Level 4-6: Medium Projects
- **Level 4**: Multi-feature web application - 2 API calls
- **Level 5**: Complex business application with integrations - 2 API calls
- **Level 6**: Microservices architecture - 2 API calls

### Level 7-9: Intensive Projects
- **Level 7**: Large-scale system with advanced features - 3 API calls
- **Level 8**: Enterprise system with full testing suite - 3 API calls
- **Level 9**: Production-ready with CI/CD, monitoring, scaling - 3 API calls

### Logic-Only Mode
- **File-Free**: No file operations, directory creation, or path logging
- **Decision Focus**: Only module transitions and key decision points
- **Mock Responses**: No actual API calls - uses cached/mock responses
- **Flow Validation**: Tests instruction logic flow without implementation details
- **Speed**: 90% faster than standard simulation

## Simulation Switches

### Feature Switches
- **`--simulate-testing`** - Include comprehensive testing operations
- **`--simulate-debug`** - Include debug and troubleshooting operations
- **`--simulate-upgrade`** - Include system upgrade scenarios
- **`--simulate-deployment`** - Include deployment and production operations

### Combination Examples
- `--simulate-medium --simulate-testing` (Level 5 with testing)
- `--simulate-intensive --simulate-upgrade` (Level 8 with upgrade scenarios)
- `--simulate-basic --simulate-debug` (Level 3 with debugging)

## Log Format

### Enhanced Command Logging
```
YYYY-MM-DD HH:MM:SS | SIMULATE | LEVEL | ACTION_TYPE | FULL_COMMAND_OR_OPERATION
```

### Logic-Only Logging (--simulate-logic-only)
```
YYYY-MM-DD HH:MM:SS | LOGIC | MODULE | DECISION_POINT | OUTCOME
```

### Action Types with Full Command Examples
- **CREATE**: `mkdir -p /full/path/to/directory`
- **COPY**: `cp /source/path/file.txt /destination/path/file.txt`
- **MOVE**: `mv /source/path/file.txt /destination/path/file.txt`
- **RUN**: `cd /working/directory && docker-compose build --no-cache`
- **TEST**: `cd /project/path && ./scripts/test_database.sh`
- **DEBUG**: `cd /project/path && docker logs container_name`
- **UPGRADE**: `cd /project/path && curl -sSL https://example.com/upgrade.sh | bash`
- **DEPLOY**: `cd /project/path && kubectl apply -f manifests/`
- **VALIDATE**: `cd /project/path && docker-compose ps`
- **RESEARCH**: `brave_web_search: "Docker best practices 2024" (for /project/path optimization)`
- **UPDATE**: `echo "content preview..." >> /full/path/to/file.txt`

## Example Simulate Logs

### Basic Level (L3) with Testing
Working Directory: `/home/user/ProjectA`
```
2024-12-19 14:30:22 | SIMULATE | L3 | CREATE | mkdir -p /home/user/ProjectA/project_working_files/issues/
2024-12-19 14:30:23 | SIMULATE | L3 | COPY | cp /home/user/ProjectA/project_instructions/templates/current_issues_template.md /home/user/ProjectA/project_working_files/issues/current_issues.md
2024-12-19 14:30:24 | SIMULATE | L3 | RUN | cd /home/user/ProjectA/simple-website && npm install express body-parser
2024-12-19 14:30:25 | SIMULATE | L3 | TEST | cd /home/user/ProjectA && ./project_working_files/scripts/test_basic_functionality.sh
2024-12-19 14:30:26 | SIMULATE | L3 | RESEARCH | brave_web_search: "Simple auth best practices 2024" (for /home/user/ProjectA/simple-website optimization)
```

### Medium Level (L5) with Testing and Debug
Working Directory: `/home/user/ProjectA`
```
2024-12-19 14:35:22 | SIMULATE | L5 | CREATE | touch /home/user/ProjectA/family-communication-hub/docker-compose.yml
2024-12-19 14:35:23 | SIMULATE | L5 | RUN | cd /home/user/ProjectA/family-communication-hub && docker-compose build --no-cache
2024-12-19 14:35:24 | SIMULATE | L5 | TEST | cd /home/user/ProjectA && ./project_working_files/scripts/test_integration_suite.sh
2024-12-19 14:35:25 | SIMULATE | L5 | DEBUG | cd /home/user/ProjectA/family-communication-hub && docker-compose logs app
2024-12-19 14:35:26 | SIMULATE | L5 | RESEARCH | Context7: "Microservices patterns" (for /home/user/ProjectA/family-communication-hub architecture)
```

### Intensive Level (L9) with All Switches
Working Directory: `/home/user/ProjectA`
```
2024-12-19 14:40:22 | SIMULATE | L9 | CREATE | mkdir -p /home/user/ProjectA/enterprise-system/k8s && touch /home/user/ProjectA/enterprise-system/k8s/deployment.yaml
2024-12-19 14:40:23 | SIMULATE | L9 | RUN | cd /home/user/ProjectA/enterprise-system && npm run test:all && npm run test:e2e
2024-12-19 14:40:24 | SIMULATE | L9 | TEST | cd /home/user/ProjectA && ./project_working_files/scripts/performance_test_suite.sh
2024-12-19 14:40:25 | SIMULATE | L9 | DEBUG | cd /home/user/ProjectA/enterprise-system && kubectl logs -f deployment/app
2024-12-19 14:40:26 | SIMULATE | L9 | UPGRADE | cd /home/user/ProjectA && curl -sSL https://raw.githubusercontent.com/PadsterH2012/Instructors/main/project_instructions/scripts/update.sh | bash
2024-12-19 14:40:27 | SIMULATE | L9 | DEPLOY | cd /home/user/ProjectA/enterprise-system && kubectl apply -f k8s/
2024-12-19 14:40:28 | SIMULATE | L9 | RESEARCH | brave_web_search: "Enterprise scaling patterns 2024" (for /home/user/ProjectA/enterprise-system production deployment)
```

### Logic-Only Mode (--simulate-logic-only)
Working Directory: `/home/user/ProjectA`
```
2024-12-19 14:30:00 | LOGIC | M0 | START | Initial Setup module initiated
2024-12-19 14:30:01 | LOGIC | M0 | VALIDATE | Project plan found and validated
2024-12-19 14:30:02 | LOGIC | M0 | DECISION | Docker-based project detected → Create container structure
2024-12-19 14:30:03 | LOGIC | M0 | COMPLETE | Module 0 completed → Proceed to Module 1
2024-12-19 14:30:04 | LOGIC | M1 | START | Research Phase initiated
2024-12-19 14:30:05 | LOGIC | M1 | DECISION | Family communication app → Research WebRTC + messaging
2024-12-19 14:30:06 | LOGIC | M1 | MOCK_API | Simulated research: WebRTC best practices (cached response)
2024-12-19 14:30:07 | LOGIC | M1 | DECISION | Child-friendly UI required → Research accessibility patterns
2024-12-19 14:30:08 | LOGIC | M1 | COMPLETE | Module 1 completed → Proceed to Module 2
2024-12-19 14:30:09 | LOGIC | M2 | START | Documentation Development initiated
2024-12-19 14:30:10 | LOGIC | M2 | DECISION | Minecraft theme + security → Document scope constraints
2024-12-19 14:30:11 | LOGIC | M2 | COMPLETE | Module 2 completed → Proceed to Module 3
2024-12-19 14:30:12 | LOGIC | M3 | START | LLD Structure and Creation initiated
2024-12-19 14:30:13 | LOGIC | M3 | DECISION | Audio system complexity → Create separate audio_system_lld.md
2024-12-19 14:30:14 | LOGIC | M3 | DECISION | Security requirements → Create security_encryption_lld.md
2024-12-19 14:30:15 | LOGIC | M3 | COMPLETE | Module 3 completed → Proceed to Module 4
```

## Simulation Configuration

### Required Context
```
## Simulation Configuration
Level: [1-9] (1=Basic, 5=Medium, 9=Intensive)
Switches: [--simulate-testing, --simulate-debug, --simulate-upgrade, --simulate-deployment]
Project Type: [Detected from project context or specified]
Working Directory: [Full path where agent is executing - MUST be established at start]
Project Root: [Full path to project root directory]
```

### Working Directory and Date/Time Establishment
- Agents MUST establish and log their current working directory (pwd) AND current date/time at the start of execution
- Execute these commands immediately upon startup: `pwd` and `date '+%Y-%m-%d %H:%M:%S %Z'`
- This working directory and timestamp context is CRITICAL for accurate relative path calculations and research context
- All file operations, command executions, and API calls depend on this established context
- Log the full path (e.g., `/home/user/ProjectA`) and timestamp for reference throughout execution
- **SIMULATION REQUIREMENT**: This applies to ALL simulation modes - agents must know current date/time for accurate logging

## Simulate Mode Rules

### Standard Simulation
- ✅ **API calls scale with level**: L1-3 (1 call), L4-6 (2 calls), L7-9 (3 calls)
- ✅ **Operations complexity increases** with level
- ✅ **Switches add specific operation types** to simulation
- ✅ **No actual changes** made to files or system
- ✅ **Level and timestamp-based** logging format
- ✅ **Full command paths** with working directory context
- ✅ **Executable commands** that could be run directly

### Logic-Only Mode (--simulate-logic-only)
- ✅ **No file operations** - Skip all mkdir, touch, cp, mv commands
- ✅ **No API calls** - Use mock/cached responses only
- ✅ **Decision focus** - Log only module transitions and key decisions
- ✅ **90% faster** - Minimal logging overhead
- ✅ **Pure logic testing** - Validate instruction flow without implementation details

## Accuracy Tracking System

### Post-Execution Assessment

After actual execution, simulation accuracy can be assessed and tracked:

### Accuracy Categories (weighted)
- **File Operations** (25%): Did simulated file operations match actual execution?
- **Command Execution** (25%): Did simulated commands match what was actually run?
- **API Calls** (20%): Did simulated research match actual research performed?
- **Time Estimates** (15%): How close were simulated time estimates to actual execution?
- **Issue Prediction** (15%): Did simulation predict actual issues encountered?

### Example Accuracy Assessment
```
=== ACCURACY ASSESSMENT ===
Phase: Environment and Configuration Implementation
Module: Module 8.2
Overall Accuracy: 87%
- File Operations: 95% - All Docker files created as simulated, minor path differences
- Command Execution: 90% - Docker commands matched, additional troubleshooting commands needed
- API Calls: 80% - Simulated 2 calls, actually needed 3 for Docker optimization
- Time Estimates: 75% - Estimated 20 min, actual 26 min due to container issues
- Issue Prediction: 85% - Predicted Docker build issues, missed network configuration problem
Notes: Simulation was very close to actual execution, good predictive accuracy
Assessed By: Claude-Agent-v2
Assessment Date: 2024-12-19
```

## Benefits

### Risk-Free Testing
- ✅ **No actual changes** made to files or system
- ✅ **Safe preview** of complex operations
- ✅ **Test instruction logic** without consequences
- ✅ **Validate workflows** before execution

### Scalable Complexity
- ✅ **Match project complexity** to simulation level
- ✅ **Avoid over-simulation** for simple projects
- ✅ **Comprehensive testing** for complex projects
- ✅ **Resource-efficient** API usage scaling

### Targeted Testing
- ✅ **Test specific features** with switches
- ✅ **Focus on problem areas** (debug, upgrade, deployment)
- ✅ **Combine multiple aspects** for comprehensive testing
- ✅ **Realistic scenarios** matching actual development

### Quality Validation
- ✅ **Validate instruction quality** through simulation accuracy
- ✅ **Improve simulation algorithms** based on accuracy feedback
- ✅ **Identify instruction gaps** where simulation fails to predict reality
- ✅ **Build confidence** in simulation predictions over time
- ✅ **Optimize instruction logic** based on accuracy patterns

## Enhanced Tracking System

### File Locations

**Primary Files**:
- `project_instructions/simulate/simulate_log.md` - Individual simulation run logs
- `project_instructions/simulate/simulation_scorecard.md` - Performance tracking for last 15 runs
- `project_instructions/simulate/simulation_analytics.md` - Visual analytics and insights
- `project_instructions/simulate/generate_visualizations.py` - Chart generation script

**Generated Charts** (when visualization script is run):
- `project_instructions/simulate/charts/accuracy_trend.png` - Performance trends over time
- `project_instructions/simulate/charts/performance_by_level.png` - Performance by complexity level
- `project_instructions/simulate/charts/issue_heatmap.png` - Issue patterns visualization
- `project_instructions/simulate/charts/project_size_scatter.png` - Project size vs accuracy correlation
- `project_instructions/simulate/charts/switch_performance_radar.png` - Switch performance comparison

### Scorecard Features

**Automatic Tracking**:
- Last 15 simulation runs with detailed metrics
- Performance trends and statistics
- Success rate and score distribution
- Performance analysis by complexity level and switch type

**Key Metrics**:
- Overall accuracy percentage
- Category breakdown (File Ops, Commands, API Calls, Time Estimates, Issue Prediction)
- Project size correlation
- Switch combination effectiveness

### Analytics and Visualization

**Visual Analytics**:
- Trend analysis showing improvement patterns
- Heatmaps identifying problem areas
- Scatter plots revealing correlations
- Radar charts comparing switch performance

**Predictive Insights**:
- Success probability models
- Risk factor identification
- Improvement recommendations
- Pattern recognition for optimization

### Integration Process

**After Each Simulation**:
1. Extract metrics from simulation log
2. Update scorecard with new run data
3. Maintain rolling 15-run window
4. Recalculate statistics and trends
5. Generate updated analytics
6. Optionally run visualization script for charts

This enhanced system provides:
- ✅ **Comprehensive tracking** of simulation performance
- ✅ **Visual insights** into patterns and trends
- ✅ **Predictive analytics** for future simulations
- ✅ **Continuous improvement** through data-driven insights
