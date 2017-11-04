package rx;

import rx.core.Interface;

@:native("Rx.IObservable")
extern interface IObservable<T> {
  @:overload(function (observer: Observer<T>): IDisposable {})
    public function subscribe(
        ?onNext: T -> Void,
        ?onError: Dynamic -> Void,
        ?onCompleted: Void -> Void): IDisposable;
}