<%-- 
    Document   : MenuSmallScreen
    Created on : Sep 21, 2019, 12:28:35 PM
    Author     : sidibe
--%>

<div id="showOnSmallDevices" class="w3-hide-medium w3-hide-large">

                <svg id="appbar" width="0" height="0" viewBox="0 0 72 36" xmlns="http://www.w3.org/2000/svg">
                <clipPath id="appbar__cutout">
                    <path d="M36 36C55.8823 36 72 19.8823 72 0V112H0V0C0 19.8823 16.1177 36 36 36Z" />
                </clipPath>
                </svg>
                <div class=" container__example--center-fab-cutout">

                    <div class="appbar appbar__bottom appbar__bottom--center-cut">
                        <a href="javacript:void(0)" class="appbar__bottom--fab appbar__bottom--fab-primary" title="add" aria-label="Add">
                            <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px" viewBox="0 0 19.25 19.25" style="enable-background:new 0 0 19.25 19.25;" xml:space="preserve" width="16px" height="16px"><g><g>
                            <g id="Layer_1_107_">
                            <g>
                            <path d="M19.006,2.97c-0.191-0.219-0.466-0.345-0.756-0.345H4.431L4.236,1.461     C4.156,0.979,3.739,0.625,3.25,0.625H1c-0.553,0-1,0.447-1,1s0.447,1,1,1h1.403l1.86,11.164c0.008,0.045,0.031,0.082,0.045,0.124     c0.016,0.053,0.029,0.103,0.054,0.151c0.032,0.066,0.075,0.122,0.12,0.179c0.031,0.039,0.059,0.078,0.095,0.112     c0.058,0.054,0.125,0.092,0.193,0.13c0.038,0.021,0.071,0.049,0.112,0.065c0.116,0.047,0.238,0.075,0.367,0.075     c0.001,0,11.001,0,11.001,0c0.553,0,1-0.447,1-1s-0.447-1-1-1H6.097l-0.166-1H17.25c0.498,0,0.92-0.366,0.99-0.858l1-7     C19.281,3.479,19.195,3.188,19.006,2.97z M17.097,4.625l-0.285,2H13.25v-2H17.097z M12.25,4.625v2h-3v-2H12.25z M12.25,7.625v2     h-3v-2H12.25z M8.25,4.625v2h-3c-0.053,0-0.101,0.015-0.148,0.03l-0.338-2.03H8.25z M5.264,7.625H8.25v2H5.597L5.264,7.625z      M13.25,9.625v-2h3.418l-0.285,2H13.25z" data-original="#030104" class="active-path" data-old_color="#030104" fill="#FFFFFF"/>
                            <circle cx="6.75" cy="17.125" r="1.5" data-original="#030104" class="active-path" data-old_color="#030104" fill="#FFFFFF"/>
                            <circle cx="15.75" cy="17.125" r="1.5" data-original="#030104" class="active-path" data-old_color="#030104" fill="#FFFFFF"/>
                            </g>
                            </g>
                            </g></g>
                            </svg>
                            <sup id="cartItemCount" class="w3-text-white"></sup>
                        </a>

                        <div class="appbar__bottom--normal" id="bottomapp1" onclick="w3_open()"s>
                            <a href="javascript:void(0)">
                                <svg fill="currentColor" viewBox="0 0 24 24" width="24" height="24"><path d="M3,6H21V8H3V6M3,11H21V13H3V11M3,16H21V18H3V16Z"/></svg>
                            </a>
                        </div>

                        <div class="appbar__bottom--cutout" id="bottomapp2"></div>

                        <div class="appbar__bottom--normal flex--right" id="bottomapp3">
                            <%--Heart symbol--%>
                            <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px" viewBox="0 0 51.997 51.997" style="enable-background:new 0 0 51.997 51.997;" xml:space="preserve" width="16px" height="16px">

                            <c:choose>
                                <c:when test="${sessionScope.customer.key!=null}">
                                    <a xlink:href="WishList.jsp">
                                        <g>
                                        <path d="M51.911,16.242C51.152,7.888,45.239,1.827,37.839,1.827c-4.93,0-9.444,2.653-11.984,6.905  c-2.517-4.307-6.846-6.906-11.697-6.906c-7.399,0-13.313,6.061-14.071,14.415c-0.06,0.369-0.306,2.311,0.442,5.478  c1.078,4.568,3.568,8.723,7.199,12.013l18.115,16.439l18.426-16.438c3.631-3.291,6.121-7.445,7.199-12.014  C52.216,18.553,51.97,16.611,51.911,16.242z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#FFFAFA"/>
                                        </g>
                                        <sup id="wishListItemCount" class="w3-circle w3-text-white" style="padding: 8px;background: #f279a1;"></sup>
                                    </a>
                                </c:when>
                                <c:otherwise>
                                    <a xlink:href="CustomerLogin.jsp">
                                        <g>
                                        <path d="M51.911,16.242C51.152,7.888,45.239,1.827,37.839,1.827c-4.93,0-9.444,2.653-11.984,6.905  c-2.517-4.307-6.846-6.906-11.697-6.906c-7.399,0-13.313,6.061-14.071,14.415c-0.06,0.369-0.306,2.311,0.442,5.478  c1.078,4.568,3.568,8.723,7.199,12.013l18.115,16.439l18.426-16.438c3.631-3.291,6.121-7.445,7.199-12.014  C52.216,18.553,51.97,16.611,51.911,16.242z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#FFFAFA"/>
                                        </g>
                                        <sup id="wishListItemCount" class="w3-circle w3-text-white" style="padding: 8px;background: #f279a1;"></sup>
                                    </a>
                                </c:otherwise>

                            </c:choose>
                            </svg>

                            <a href="javascript:void(0)" onclick="document.getElementById('accountSmall').style.display = 'block'">
                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px" viewBox="0 0 350 350" style="enable-background:new 0 0 350 350;" xml:space="preserve" width="16px" height="16px"><g><g>
                                <path d="M175,171.173c38.914,0,70.463-38.318,70.463-85.586C245.463,38.318,235.105,0,175,0s-70.465,38.318-70.465,85.587   C104.535,132.855,136.084,171.173,175,171.173z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#FFFFFF"/>
                                <path d="M41.909,301.853C41.897,298.971,41.885,301.041,41.909,301.853L41.909,301.853z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#FFFFFF"/>
                                <path d="M308.085,304.104C308.123,303.315,308.098,298.63,308.085,304.104L308.085,304.104z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#FFFFFF"/>
                                <path d="M307.935,298.397c-1.305-82.342-12.059-105.805-94.352-120.657c0,0-11.584,14.761-38.584,14.761   s-38.586-14.761-38.586-14.761c-81.395,14.69-92.803,37.805-94.303,117.982c-0.123,6.547-0.18,6.891-0.202,6.131   c0.005,1.424,0.011,4.058,0.011,8.651c0,0,19.592,39.496,133.08,39.496c113.486,0,133.08-39.496,133.08-39.496   c0-2.951,0.002-5.003,0.005-6.399C308.062,304.575,308.018,303.664,307.935,298.397z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#FFFFFF"/>
                                </g></g> 
                                </svg>

                            </a>



                            <a href="javascript:void(0)">
                                <svg fill="currentColor" viewBox="0 0 24 24" width="16" height="16"><path d="M12,16A2,2 0 0,1 14,18A2,2 0 0,1 12,20A2,2 0 0,1 10,18A2,2 0 0,1 12,16M12,10A2,2 0 0,1 14,12A2,2 0 0,1 12,14A2,2 0 0,1 10,12A2,2 0 0,1 12,10M12,4A2,2 0 0,1 14,6A2,2 0 0,1 12,8A2,2 0 0,1 10,6A2,2 0 0,1 12,4Z"/></svg>
                            </a>

                        </div>


                    </div>
                </div>
            </div>
