<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<body>
<h1>Collaborative Whiteboard App</h1>
<table>
    <tr>
        <td>
            <canvas id="myCanvas" width="150" height="150" style="border:1px solid #000000;"></canvas>
        </td>
        <td>
            <form name="inputForm">
                <table>

                    <tr>
                        <th>Color</th>
                        <td><input type="radio" name="color" value="#FF0000" checked="true">Red</td>
                        <td><input type="radio" name="color" value="#0000FF">Blue</td>
                        <td><input type="radio" name="color" value="#FF9900">Orange</td>
                        <td><input type="radio" name="color" value="#33CC33">Green</td>
                    </tr>

                    <tr>
                        <th>Shape</th>
                        <td><input type="radio" name="shape" value="square" checked="true">Square</td>
                        <td><input type="radio" name="shape" value="circle">Circle</td>
                        <td> </td>
                        <td> </td>
                    </tr>

                </table>

            </form>
        </td>
    </tr>
</table>
<script type="text/javascript" src="websocket.js"></script>
<script type="text/javascript" src="whiteboard.js"></script>
</body>
