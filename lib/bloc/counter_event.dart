abstract class CounterEvent{}

class IncrementEvent extends CounterEvent{
  int value;
  IncrementEvent({required this.value});
}

class DecrementEvent extends CounterEvent{}