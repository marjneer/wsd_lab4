<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title> Travel Information</title>
                <style>
                    table,th,td {
                      border : 1px solid black;
                      border-collapse: collapse;
                    }
                    th,td {text-align:center;
                      padding: 5px;
                      color:white;
                    }
                    th{background-color:#A28B55;}
                    td{background-color:#86AB89;}
                </style>
            </head>
            
            <body>
                <h3>Destination Details</h3>
                
                <table>
                    <tr>
                        <th>State</th>
                        <th>Region</th>
                    </tr>
                    <tr>
                        <td><xsl:value-of select="destination/place/state"/></td>
                        <td><xsl:value-of select="destination/place/region"/></td>
                    </tr>
                </table>

                <h3>Attraction</h3>
                <table>
                    <tr>
                        <th>Name</th>
                        <th>Rating</th>
                        <th>Ticket Price</th>
                    </tr>
                    <tr>
                        <td><xsl:value-of select="destination/attraction/name"/></td>
                        <td><xsl:value-of select="destination/attraction/rating"/></td>
                        <td><xsl:value-of select="destination/attraction/ticket"/></td>
                    </tr>
                </table>

                <h3>Food Type</h3>
                <table>
                    <tr>
                        <th>Meal Type</th>
                        <th>Average Cost</th>
                    </tr>
                    <tr>
                        <td><xsl:value-of select="destination/food-type/meal-type"/></td>
                        <td><xsl:value-of select="destination/food-type/avg-cost"/></td>
                    </tr>
                </table>

                <h3>Food</h3>
                <table>
                    <tr>
                        <th>Item</th>
                        <th>Drink</th>
                    </tr>
                    <tr>
                        <td><xsl:value-of select="destination/food/item"/></td>
                        <td><xsl:value-of select="destination/food/drink"/></td>
                    </tr>
                </table>

                <h3>Transport</h3>
                <table>
                    <tr>
                        <th>Transport Type 1</th>
                        <th>Cost</th>
                    </tr>
                    <tr>
                        <td><xsl:value-of select="destination/transport/transport1/type"/></td>
                        <td><xsl:value-of select="destination/transport/transport1/cost"/></td>
                    </tr>
                    <tr>
                        <th>Transport Type 2</th>
                        <th>Cost</th>
                    </tr>
                    <tr>
                        <td><xsl:value-of select="destination/transport/transport2/type"/></td>
                        <td><xsl:value-of select="destination/transport/transport2/cost"/></td>
                    </tr>
                </table>

                <h3>Hotel</h3>
                <table>
                    <tr>
                        <th>Hotel Name</th>
                        <th>Locality</th>
                    </tr>
                    <tr>
                        <td><xsl:value-of select="destination/hotel/hotel-name"/></td>
                        <td><xsl:value-of select="destination/hotel/locality"/></td>
                    </tr>
                </table>

                <h3>Hotel Info</h3>
                <table>
                    <tr>
                        <th>Room Type</th>
                        <th>Number of Rooms</th>
                    </tr>
                    <tr>
                        <td><xsl:value-of select="destination/hotel-info/room-type"/></td>
                        <td><xsl:value-of select="destination/hotel-info/rooms"/></td>
                    </tr>
                </table>

                <h3>Coupon</h3>
                <table>
                    <tr>
                        <th>Coupon Code</th>
                        <th>Discount Percent</th>
                    </tr>
                    <tr>
                        <td><xsl:value-of select="destination/coupon/coupon-code"/></td>
                        <td><xsl:value-of select="destination/coupon/discount-percent"/></td>
                    </tr>
                </table>
            </body>

        </html>
    </xsl:template>
</xsl:stylesheet>