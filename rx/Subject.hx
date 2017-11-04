package rx;

import haxe.Constraints.Constructible;
import rx.core.Interface;
import rx.scheduler.IScheduler;
import rx.scheduler.ICurrentThreadScheduler;
import rx.scheduler.Scheduler;
import rx.Observer;
import rx.Notification;
import rx.promise.IPromise;
import rx.IObservable;


@:native("Rx.Subject")
extern class Subject<T> implements IObservable<T> implements IObserver<T>
{
	public function new ();
	
	@:overload(function (observer: Observer<T>): IDisposable {})
	public function subscribe(
		?onNext: T -> Void,
		?onError: Dynamic -> Void,
		?onCompleted: Void -> Void): IDisposable;

	public function next(value:T): Void;
	public function error(error:Dynamic): Void;
	public function complete(): Void;
	
	public function asObservable(): Observable<T>;
}