import Toybox.Lang;
import Toybox.Time;

class CountDown {
    hidden var mDuration as Duration;
    hidden var mEndMoment as Moment;

    function initialize(duration as Duration) {
        mDuration = duration;
        mEndMoment = Time.now().add(mDuration);
    }

    function reset() as Void {
        mEndMoment = Time.now().add(mDuration);
    }

    function done() as Boolean {
        return mEndMoment.lessThan(Time.now());
    }
}