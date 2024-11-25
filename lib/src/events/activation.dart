import 'package:drules/drules.dart';

/// An event listener that listens for activation events.
///
/// The listener is called when a rule is activated.
typedef ActivationEventListener = void Function(ActivationRecord event);

/// Represents an activation event.
///
/// The event contains information about the rule that was activated,
/// the facts that triggered the rule, and the result of the rule.
class ActivationRecord {
  final String ruleName;
  final String runId;
  final bool activated;
  final DateTime timestamp;
  final Duration executionTime;
  final RuleResult ruleResult;
  final ActionInfo actionInfo;
  final Map<String, dynamic> facts;

  ActivationRecord({
    required this.ruleName,
    required this.runId,
    required this.activated,
    required this.timestamp,
    required this.executionTime,
    required this.ruleResult,
    required this.facts,
    required this.actionInfo,
  });

  @override
  String toString() {
    return 'ActivationRecord: { runId: $runId, timestamp: $timestamp, '
        'executionTime: $executionTime, ruleResult: $ruleResult }';
  }

  // Copy With Method
  ActivationRecord copyWith({
    String? ruleName,
    String? runId,
    bool? activated,
    DateTime? timestamp,
    Duration? executionTime,
    RuleResult? ruleResult,
    Map<String, dynamic>? facts,
    ActionInfo? actionInfo,
  }) {
    return ActivationRecord(
      ruleName: ruleName ?? this.ruleName,
      runId: runId ?? this.runId,
      activated: activated ?? this.activated,
      timestamp: timestamp ?? this.timestamp,
      executionTime: executionTime ?? this.executionTime,
      ruleResult: ruleResult ?? this.ruleResult,
      facts: facts ?? this.facts,
      actionInfo: actionInfo ?? this.actionInfo,
    );
  }
}
