package com.kosmo.movieing.service;

import java.sql.Date;

public class CalendarDto {
	
	String eventName;
	String eventContent;
	Date eventStart;
	Date eventEnd;
	String eventPlace;
	public String getEventName() {
		return eventName;
	}
	public String getEventContent() {
		return eventContent;
	}
	public Date getEventStart() {
		return eventStart;
	}
	public Date getEventEnd() {
		return eventEnd;
	}
	public String getEventPlace() {
		return eventPlace;
	}
	
	

}
