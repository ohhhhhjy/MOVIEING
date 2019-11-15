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
	public void setEventName(String eventName) {
		this.eventName = eventName;
	}
	public void setEventContent(String eventContent) {
		this.eventContent = eventContent;
	}
	public void setEventStart(Date eventStart) {
		this.eventStart = eventStart;
	}
	public void setEventEnd(Date eventEnd) {
		this.eventEnd = eventEnd;
	}
	public void setEventPlace(String eventPlace) {
		this.eventPlace = eventPlace;
	}
	
	
	
	

}
