/// @desc Clean up data structures
ds_destroy(twentymon_queue, ds_type_priority);
ds_destroy(twentymon_buffer, ds_type_priority);
audio_stop_sound(music);