<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<h2 align="center" style="margin-bottom: 20px;">Repeat</h2>
<div class="row">
    <div class="col-md-3">
        <p class="spacebot">Repeats :</p>
        <div class="RpDay rp hide">
            <p class="spacebot">Repeat every :</p>
            <p class="spacebot">Starts on :</p>
            <p class="spacebot">Ends :</p>
            <br>
            <br>
        </div>
        <div class="RpWeek rp hide">
            <p class="spacebot">Repeat every :</p>
            <p class="spacebot">Repeat on :</p>
            <p class="spacebot">Starts on :</p>
            <p class="spacebot">Ends :</p>
            <br>
            <br>
        </div>
        <div class="RpMonthly rp hide">
            <p class="spacebot">Repeat every :</p>
            <p class="spacebot">Repeat by :</p>
            <p class="spacebot">Starts on :</p>
            <p class="spacebot">Ends :</p>
            <br>
            <br>
        </div>
        <div class="RpYear rp hide">
            <p class="spacebot">Repeat every :</p>
            <p class="spacebot">Starts on :</p>
            <p class="spacebot">Ends :</p>
            <br>
            <br>
        </div>
    </div>
    <div class="col-md-9">
        <select class="spacebot" id="rpchoise">
                  <option>No repeat</option>
                  <option value="Daily">Daily</option>
                  <option value="Weekly">Weekly </option>
                  <option value="Monthly">Monthly</option>
                  <option value="Yearly">Yearly</option>
              </select>
        <div class="RpDay rp hide">
            <form class="from-inline">
                <div class="form-group">
                    <select>
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                            <option>5</option>
                            <option>6</option>
                            <option>7</option>
                            <option>8</option>
                            <option>9</option>
                            <option>10</option>
                            <option>11</option>
                            <option>12</option>
                            <option>13</option>
                            <option>14</option>
                            <option>15</option>
                            <option>16</option>
                            <option>17</option>
                            <option>18</option>
                            <option>19</option>
                            <option>20</option>
                            <option>21</option>
                            <option>22</option>
                            <option>23</option>
                            <option>24</option>
                            <option>25</option>
                            <option>26</option>
                            <option>27</option>
                            <option>28</option>
                            <option>29</option>
                            <option>30</option>
                    </select>
                    <label>days</label>
                </div>
            </form>
            <input type="date" class="disable spacebot" style="height: 20px;">
            <form action="">
                <input type="radio" name="gender" value="Never" checked="checked"> Never <br>
                <input type="radio" name="gender" value="After"> After
                <span>
                        <input type="text" style="height: 20px;" class="radio-After" disabled>
                        occurrences
                      </span>
                <br>
                <input type="radio" name="gender" value="On"> On
                <span>
                      <input type="date" style="height: 20px;" disabled class="radio-On">
                    </span>
            </form>
        </div>
        <div class="RpWeek rp hide">
            <form class="from-inline">
                <div class="form-group">
                    <select>
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                            <option>5</option>
                            <option>6</option>
                            <option>7</option>
                            <option>8</option>
                            <option>9</option>
                            <option>10</option>
                            <option>11</option>
                            <option>12</option>
                            <option>13</option>
                            <option>14</option>
                            <option>15</option>
                            <option>16</option>
                            <option>17</option>
                            <option>18</option>
                            <option>19</option>
                            <option>20</option>
                            <option>21</option>
                            <option>22</option>
                            <option>23</option>
                            <option>24</option>
                            <option>25</option>
                            <option>26</option>
                            <option>27</option>
                            <option>28</option>
                            <option>29</option>
                            <option>30</option>
                    </select>
                    <label>Week</label>
                </div>
            </form>
            <div>
                <label class="checkbox-inline"><input type="checkbox" value="">S</label>
                <label class="checkbox-inline"><input type="checkbox" value="">M</label>
                <label class="checkbox-inline"><input type="checkbox" value="">T</label>
                <label class="checkbox-inline"><input type="checkbox" value="">W</label>
                <label class="checkbox-inline"><input type="checkbox" value="">T</label>
                <label class="checkbox-inline"><input type="checkbox" value="">F</label>
                <label class="checkbox-inline"><input type="checkbox" value="">S</label>
            </div>
            <br>
            <input type="date" class="spacebot" disabled="" style="height: 20px;">
            <form>
                <input type="radio" name="gender" value="Never" checked="checked"> Never <br>
                <input type="radio" name="gender" value="After"> After
                <span>
                        <input type="text" style="height: 20px;" class="radio-After" disabled>
                        occurrences
                      </span>
                <br>
                <input type="radio" name="gender" value="On"> On
                <span>
                      <input type="date" style="height: 20px;" disabled class="radio-On">
                    </span>
            </form>
        </div>
        <div class="RpMonthly rp hide ">
            <form class="from-inline">
                <div class="form-group">
                    <select>
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                            <option>5</option>
                            <option>6</option>
                            <option>7</option>
                            <option>8</option>
                            <option>9</option>
                            <option>10</option>
                            <option>11</option>
                            <option>12</option>
                            <option>13</option>
                            <option>14</option>
                            <option>15</option>
                            <option>16</option>
                            <option>17</option>
                            <option>18</option>
                            <option>19</option>
                            <option>20</option>
                            <option>21</option>
                            <option>22</option>
                            <option>23</option>
                            <option>24</option>
                            <option>25</option>
                            <option>26</option>
                            <option>27</option>
                            <option>28</option>
                            <option>29</option>
                            <option>30</option>
                    </select>
                    <label>Month</label>
                </div>
            </form>
            <div>
                <label class="radio-inline"><input type="radio" name="optradio">day of the month</label>
                <label class="radio-inline"><input type="radio" name="optradio">day of the week</label>
            </div>
            <br>
            <input type="date" class="spacebot" disabled="" style="height: 20px;">
            <form>
                <input type="radio" name="gender" value="Never" checked="checked"> Never <br>
                <input type="radio" name="gender" value="After"> After
                <span>
                        <input type="text"  class="radio-After" disabled>
                        occurrences
                      </span>
                <br>
                <input type="radio" name="gender" value="On"> On
                <span>
                      <input type="date" style="height: 20px;" disabled class="radio-On">
                    </span>
            </form>
        </div>
        <div class="RpYear rp hide">
            <form class="from-inline">
                <div class="form-group">
                    <select>
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                            <option>5</option>
                            <option>6</option>
                            <option>7</option>
                            <option>8</option>
                            <option>9</option>
                            <option>10</option>
                            <option>11</option>
                            <option>12</option>
                            <option>13</option>
                            <option>14</option>
                            <option>15</option>
                            <option>16</option>
                            <option>17</option>
                            <option>18</option>
                            <option>19</option>
                            <option>20</option>
                            <option>21</option>
                            <option>22</option>
                            <option>23</option>
                            <option>24</option>
                            <option>25</option>
                            <option>26</option>
                            <option>27</option>
                            <option>28</option>
                            <option>29</option>
                            <option>30</option>
                    </select>
                    <label>Year</label>
                </div>
            </form>
            <input type="date" class="spacebot" style="height: 20px;" disabled="">
            <form action="">
                <input type="radio" name="gender" value="Never" checked="checked"> Never <br>
                <input type="radio" name="gender" value="After"> After
                <span>
                        <input type="text" style="height: 20px;" class="radio-After" disabled>
                        occurrences
                      </span>
                <br>
                <input type="radio" name="gender" value="On"> On
                <span>
                      <input type="date" style="height: 20px;" disabled class="radio-On">
                    </span>
            </form>
        </div>
    </div>
</div>
</body>
