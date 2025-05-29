# 🎭 Simulation System

## Overview
This directory contains the enhanced simulation tracking system that provides comprehensive analytics and visualization for simulation performance.

## Files Structure

### Core Files
- **`simulate_log.md`** - Individual simulation run logs with detailed operation tracking
- **`simulation_scorecard.md`** - Performance tracking for the last 15 runs with statistics
- **`simulation_analytics.md`** - Visual analytics, insights, and trend analysis
- **`generate_visualizations.py`** - Python script for generating performance charts

### Generated Content
- **`charts/`** - Directory containing generated visualization charts (created when script runs)
- **`analytics_report.md`** - Auto-generated summary report (created by visualization script)

## Quick Start

### Running a Simulation
Use any of these commands with your AI agent:

```bash
# Basic simulation
Follow the instructions in project_instructions/project_instruction_index.md and resume from current status.
--simulate-medium

# Advanced simulation with switches
Follow the instructions in project_instructions/project_instruction_index.md and resume from current status.
--simulate-medium --simulate-testing --simulate-debug
```

### Viewing Results
1. **Individual Run**: Check `simulate_log.md` for detailed operation logs
2. **Performance Trends**: Review `simulation_scorecard.md` for last 15 runs
3. **Analytics**: Read `simulation_analytics.md` for insights and patterns
4. **Visual Charts**: Run the visualization script to generate graphs

### Generating Visualizations
```bash
# Install requirements (if not already installed)
pip install matplotlib pandas seaborn numpy

# Generate charts
python3 project_instructions/simulate/generate_visualizations.py
```

## Key Features

### 📊 Performance Tracking
- **Rolling 15-run scorecard** with detailed metrics
- **Accuracy breakdown** by category (File Ops, Commands, API Calls, Time Estimates, Issue Prediction)
- **Trend analysis** showing improvement patterns
- **Success rate tracking** with performance thresholds

### 📈 Visual Analytics
- **Accuracy trend charts** showing performance over time
- **Performance by complexity level** comparisons
- **Issue frequency heatmaps** identifying problem areas
- **Project size correlation** scatter plots
- **Switch performance radar charts** for optimization

### 🎯 Predictive Insights
- **Success probability models** based on project characteristics
- **Risk factor identification** for different scenarios
- **Improvement recommendations** based on historical data
- **Pattern recognition** for optimization opportunities

### 🔄 Automatic Integration
- **Scorecard auto-update** after each simulation
- **Statistics recalculation** with new data
- **Trend analysis updates** for continuous improvement
- **Rolling window maintenance** (keeps last 15 runs)

## Understanding the Metrics

### Accuracy Categories
1. **File Operations (25%)** - How well simulated file operations match actual execution
2. **Command Execution (25%)** - Accuracy of simulated commands vs actual commands run
3. **API Calls (20%)** - How well simulated research matches actual research performed
4. **Time Estimates (15%)** - Closeness of simulated time estimates to actual execution time
5. **Issue Prediction (15%)** - How well simulation predicts actual issues encountered

### Performance Levels
- **90-100%**: Excellent simulation accuracy
- **80-89%**: Good simulation accuracy
- **70-79%**: Needs improvement
- **Below 70%**: Poor accuracy requiring attention

### Complexity Levels
- **L1-L3 (Basic)**: Static sites, simple apps, basic authentication
- **L4-L6 (Medium)**: Multi-feature apps, integrations, microservices
- **L7-L9 (Intensive)**: Enterprise systems, full testing suites, production-ready

## Best Practices

### For Accurate Simulations
1. **Choose appropriate complexity level** for your project
2. **Use relevant switches** (--testing, --debug, --upgrade, --deploy)
3. **Ensure agents establish pwd and date** at startup
4. **Review scorecard trends** to identify improvement areas

### For Analysis
1. **Run visualizations regularly** to spot trends
2. **Review analytics insights** for optimization opportunities
3. **Track improvement patterns** over time
4. **Use predictive models** for project planning

### For Continuous Improvement
1. **Assess accuracy after real execution** when possible
2. **Update scorecard with actual results** for learning
3. **Identify recurring issues** from heatmaps
4. **Adjust simulation parameters** based on insights

## Integration with Main System

This simulation system integrates seamlessly with the main instruction system:

- **Automatic Detection**: Agents detect simulation flags and use appropriate logging
- **Template Integration**: Uses enhanced templates with scorecard integration
- **Date/Time Sync**: Ensures consistent timestamp tracking across all modes
- **Performance Feedback**: Provides data for instruction system improvements

## Troubleshooting

### Common Issues
1. **Missing Charts**: Run `python3 project_instructions/simulate/generate_visualizations.py`
2. **Scorecard Not Updating**: Check that simulation logs include proper metrics
3. **Visualization Errors**: Ensure required Python packages are installed
4. **Data Inconsistencies**: Verify simulation log format matches template

### Requirements
- Python 3.6+ (for visualization script)
- matplotlib, pandas, seaborn, numpy (for charts)
- Proper simulation log format
- Consistent scorecard structure

---

*For detailed documentation, see `project_instructions/docs/simulate-mode.md`*
