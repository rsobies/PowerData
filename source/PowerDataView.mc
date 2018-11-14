using Toybox.WatchUi;
using Toybox.AntPlus;

class PowerDataView extends WatchUi.SimpleDataField {

	private var moc=1;
    // Set the label of the data field here.
    function initialize() {
        SimpleDataField.initialize();
        label = "Moc";
    }

    // The given info object contains all the current workout
    // information. Calculate a value and return it in this method.
    // Note that compute() and onUpdate() are asynchronous, and there is no
    // guarantee that compute() will be called before onUpdate().
    function compute(info) {
        // See Activity.Info in the documentation for available information.
        
        if (info.currentPower != null) {
            return info.currentPower;
        }
        
        return 0.0f;
    }

}