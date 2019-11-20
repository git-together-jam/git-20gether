/// @func next_mon()

// check to see if the last mon in the queue was knocked out
if (ds_priority_empty(twentymon_queue)) {
	// Copy the buffer queue to the default queue
	ds_priority_copy(twentymon_queue, twentymon_buffer);
	ds_priority_clear(twentymon_buffer)
}

// Find the next mon in turn and add it to the buffer queue
var _currentMon = ds_priority_delete_max(twentymon_queue);


if(instance_exists(_currentMon)) {
	ds_priority_add(twentymon_buffer, _currentMon, _currentMon.agility);
}

if (ds_priority_empty(twentymon_queue)) {
	// Copy the buffer queue to the default queue
	ds_priority_copy(twentymon_queue, twentymon_buffer);
	ds_priority_clear(twentymon_buffer)
}

return _currentMon;