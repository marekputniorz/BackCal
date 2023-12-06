cd /ctm_stor/calendars_backup/Periodic
ctm deploy calendars::get -s "type=Periodic" > $FILENAME_PERIODIC

if grep -q '{}' $FILENAME_PERIODIC
then
    rm $FILENAME_PERIODIC
fi

cd /ctm_stor/calendars_backup/Rule-Based
ctm deploy calendars::get -s "type=RuleBasedCalendar" > $FILENAME_RULEBASED

if grep -q '{}' $FILENAME_RULEBASED
then
    rm $FILENAME_RULEBASED
fi

cd /ctm_stor/calendars_backup/Regular
ctm deploy calendars::get -s "type=Regular" > $FILENAME_REGULAR

if grep -q '{}' $FILENAME_REGULAR
then
    rm $FILENAME_REGULAR
fi