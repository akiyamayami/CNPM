<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
</head>
<body>
        <h2 align="left" style="margin-bottom: 20px;">Notification</h2>
        <div class="boxnoty">
          <div class="Reminder">
            <select>
              <option>Email</option>
              <option>Phone</option>
              <option>Both</option>
            </select>
            <span>
            <input type="text" style="height: 20px;">
            <select>
              <option>Seconds</option>
              <option>Minute</option>
              <option>Hours</option>
              <option>Day</option>
              <option>Week</option>
            </select>
            </span>
          </div>
        </div>
        <a href="#" id="btnaddNoty">
        Add a notification
        </a>
</body>