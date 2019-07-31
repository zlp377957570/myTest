<template>
  <div class="hello">
      <div class="header">
        <div class="main_header">
          <div class="moveLine">
            <div :class="[lineHeight?'lineHeight':'',lineHeight2?'lineHeight2':'']"></div>
          </div>
          <div class="main_header_top">
            <div class="main_header_left">
              <img src="@/assets/image/icon/mi.png" alt="">
            </div>
            <div class="main_header_search">
              <van-icon name="search"/>搜索商品名称
            </div>
            <div class="main_header_right">
              <van-icon name="manager-o"/>   
            </div>
          </div>
          <div class="main_header_tab">
            <div class="contentBar">
              <div v-for="(item,i) in tabs" :key="i" class="itemBar" :index="i" @click="tabSelect(i)">
                <span :class="index==i?'active':''">{{item}}<i></i></span>
              </div>
            </div>       
            <div class="downBar" @click="openBar">
              <span :class="show?'openBar':''"></span>
            </div>     
            <div :class="show?'showContent showHeight':'showContent'">
              <p>全部</p>
              <div class="showBody">
                <span @click="headerBarSelect(key)" v-for="(val,key) in tabs" :key="key" :index="key" :class="index==key?'heHeight':''">
                  {{val}}                                                                                
                </span>
              </div>
            </div>
          </div>        
        </div>
      </div>
      <div :class="['main_bodyer',{'noScorllLeft':noScorllLeft,'noScorllTop':noScorllTop}]" :name="fades" tag="div" style="left:0px">          
        <div v-for="(page,p) in tabs" :class="['bodys',{'zIndex':!show,'noScorllLeft':noScorllLeft,'noScorllTop':noScorllTop}]" :key="p" @touchstart="onTouchStart($event,p)">   
          <!-- <keep-alive :include="'page'+p"> -->
            <!-- <v-touch @swipeleft="onSwipeLeft($event)" @swiperight="onSwipeRight($event)"> -->
              <component :is="'page'+p" :indexs="index"></component>   
            <!-- </v-touch> -->
          <!-- </keep-alive> -->
        </div>                                                     
      </div>  
      <!-- <div class="footBar"> -->
        <div class="footer">
          <a v-for="(bar,index) in footbar" :key="index" @click="selectFootBar($event,index)"><i :style="{backgroundImage:actives==index?bar.src2:bar.src}"></i><span :style="actives==index?{color:'#ff6700'}:{color:'#b5b5b5'}">{{bar.name}}</span></a>
        </div>       
      <!-- </div>     -->
  </div>
</template>

<script>
import { Button,Dialog,Row, Col,Icon,Tab, Tabs,Tabbar, TabbarItem,Lazyload  } from 'vant'
import { setTimeout, clearTimeout, setInterval, clearInterval } from 'timers'
import page0 from './page-list/page0'
import page1 from './page-list/page1'
import page2 from './page-list/page2'
import page3 from './page-list/page3'
import page4 from './page-list/page4'
import page5 from './page-list/page5'
import page6 from './page-list/page6'
import { ELOOP } from 'constants';
export default {
  name: 'HelloWorld',
  data () {
    return {
      index:0,
      lineHeight:false,
      lineHeight2:true,
      actives:0,
      footbar:[
        {
          name:'首页',
          src:'url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADwAAAA8CAMAAAANIilAAAAAk1BMVEUAAABxcXFxcXFwcHBxcXFwcHBvb29wcHBwcHBxcXFvb29wcHBubm5vb29vb29wcHBwcHBvb29wcHBwcHBwcHBvb29wcHBwcHBwcHBwcHBwcHBwcHBwcHBwcHBycnJwcHBwcHBwcHBvb29wcHBwcHBwcHBwcHBvb29vb29wcHBwcHBwcHBubm5wcHB0dHRycnJ2dnY0KzjsAAAALnRSTlMAAgn0mv6+6cEcQdIlEg36rTcy5E0g7tXFu6GPhmwG3Kl4KbSTc1xXR8p/Zyxhwd65kwAAAr1JREFUSMftlumSojAUhYEYQemwg7K4r63dOXn/p5ubbqoVcByw5tfUnNLKMfB5b05AMZ7JJBkv6gt8mRZhKF6ta552uxMNr7DLi82YfVmSHcyKEYeU4CMxkKaQ0wDgQcCBIKXPg2KO5hJ+6XmlD8wjmhrAJjOAHUzyBwbMEjK92U8bsI9kyR+1/yTfc4s2utpZW/066y42NN2H9fb8e521aP0A9l6X7sY8WeuYU/I/q0h16OvJn0OPHGIbZcgK3YwTPQXrBfr6qmrFcPHrGJ6wxxjIrmQ7R64ZEB/JPo15lZB9tPWrJ6FTzGUrZq1m6LzUaXRRipnY4JZpdx8Coin0B/jHGMDIexaJNwIw/ujWnboAr9oxt0JfVhxwp2Qb7EnHvLifNWu8ed5Ch34iez/HwFdJh/1d6D9VaLAqH9wNW81sF0VQHKL25oRzDr+y9Kx+i4Jzjl2zrneJfamUb+8nrRTCjE4vxPfp2xwadqxGsAWX0me+lMjTZuepDQ7k2682XAl7xyTB5q3nEuD54XQNGGRgNXp6s8EYl25IPTsK7BhmTThh8EtB1jqQu7Zg6W5iqLEwxE6tTsb0vjJFVChemN/7VHE1pkunAb+Lc6x2QocaGm347V3Z0zrPj5VahS14NjHCxbaeaMNRTF9eeyuQWdKC3cntTuzAYSznXl3ZXEvWhfWBmm7D25mMoxpOXRVPH8G1OrC1VrysL+wDV3oJfWEajxzs+uWTGHxjmENgXZoVyfa8t7lyqHB/mEzqKIDZDFCz0BgEk9JRBiklWEDJDYPJLqdVPs/LxKNPA2HtTTERehgM179fNToY1jjJ6A939R/+B+EeegyPlz2fD9MujLkwrR7yjCiTswYc2TJz8nEf5e++dMQ9vByBS9VHUknOW08BaQDZV/rfuamwGvXVJu2EOETdu3yAjL+gX1S9Wc5duViwAAAAAElFTkSuQmCC)',
          src2:'url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADwAAAA8CAMAAAANIilAAAABI1BMVEUAAAD/hwD1bQP2bQP1bQP4WQD2bQP1bALxawD1bgT2bQP2bAP0awD2bQL2bQP3bQT0bAD1bQL1bAP2bQL2bAP2bQP1bAP1bQP2bQL2bQP1bAX0awL5bQD2awDwZgD1bQP1bgL2bQL3bgP0awTzagT7bQD1bAL2bQP1bAP1bAP1bQT2bQL2bAP2bAL1bAP1bQP1bAP1bQL1bAL2bQP/cwP8bwP////+cAP4bgP///76bgP1bgn1bgX2bw/0WQD1bhj1bhT1ZgL1ZAD0YgD0WwD72sP6xaP1ahn0XwD4pnD3i0j1aRL1agD+/Pb9+PP+9u/+8OT85ND5t433n2v2bgH2dAD0cwD969r80bP6y7D4s4b4r3r2llr1fy31eh74bQP1YQBGjgL7AAAAMXRSTlMAAf78mgP21B1B/f0R46s3B+nAbVfzvLSFSjQtKRoM8Xl2YURBFdjDl5OPgF3VzJ+eS58CkgAABAVJREFUSMetlQd32jAQx0G0mNoQCqRJk7bpTPeyDiNj9shO9979/p+id9JZoq+GB3m9F+Qg8dP976/h3KLIY+TOGHluzsaWq9Uy0yuz+fXNzXV8nIW9+KhWLNYeXSR6Zc334yiOI7i/qnI0ubSmQGCAWivh95Vs3r6npAhlGPqhureNXSuwW3eVEGFItBDq7hbTS7G3apEPoZQISylEVLu1JH0+d/5GMRLSsBRSRMUb2L0Mu/MgjgMJCNoQcfJgh+mFNl9DmwPJOaWl1do1Gl1c7pW6Cn0NMqzFy0Cq+hX8wUL2tqcEaNDgXDnZprzbTM9hH1ciPwCNMGwbpCuPmc6yKn/zUhTo5WXBFBCydhDRpZt5/Flm3p2HkBSIw8DWVkxfgeYpJPBwh3Jn2RyDMKxtXOEaF7/iDNPJ5o0IsFzQBJIsVze2Ch/UhjXdsRc8ReWC8YcDNI7BMIAIlHeBacuuV5QQ7LEJZ5lhwUwXBKqyzjSzDbQ53ReS6wQ9V+o98DDS0fUGQvbCuVyIChqazQtht9M1DnB+Lr+QFC7j5WRs3n2Gapjk8ujZHRycHAwQd/WbB4gYnu8a069uJIma9Raw7Ybdk2n/cNo/6RgaQEtjFXG0cZVUVz2VXPKKmmZ5RHdGv7/vf95/Nx53WAoNQQg0XiyC8qq5XLneTK7f2roeixTWn+5o/PZ1q9V6tX866hjYTi4i72YlatbLufJmE62/UIxFmJZNizKYHr1otdvtVvtt/4DqBqR4Aj96Wt6qNDfLWHJjG09iMQ7ArWnYG3/YayHaarfe/DjsUZ9bCz/xSrlq4yqfJ8ocSE5LaYbT41cIEvzyXX+AhHOEZJfcO4lgEATz4ZOD/vFLhl8cIYy9TDNMB9jQBjarybInP9+gbPr7dDwd6gG7/3yE3f7kzGBw0Ib1v1Je/Oz3D/gGB86fCbNqrbEzOv2iZe99nPQ0LO3FJv6FA5kmoOf73uT0aO/13rePk6E5ImznnMy0LW10cbUOww/vD8dDw/H2XQg7ebIzHE1Gw5471BRzZAtjpYVpf/c6Vgr18pBIsuHZ295d3xR8nWbJvoMwn2YA6UQaHtLlNws2p2Z7aYcp6u5vngrmGBY6mAJCwcDfF6IU/8iOhb29QMOz9VKP/R+yMrurbjaXm5KHIEN2mhmsUOCMoRswtsyBwXrKstkmJ4q6RTZMozyFu4KZ4T4ps93mY8Ep2CH3krWvHT/Lbbs7pctFqKmWYKCJsgwLAJgwqLHO2Wytm7dJKNyGNp7rUlwPyMxTZTA5A3IHq7Gnw0+e/AVv1yKRVmkpDsacj4Gq7xJsX7LnosLSIQsNYhxdWouay0b6dnZRvXxu2bhhK7a5l4vsX+dXidx/iD/dun/WaEYHqgAAAABJRU5ErkJggg==)'
        },
        {
          name:'分类',
          src:'url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADwAAAA8CAMAAAANIilAAAAAllBMVEUAAABubm5xcXFxcXFvb29xcXFycnJwcHBxcXF3d3d2dnZwcHBwcHBtbW1wcHBwcHBycnJ0dHRwcHBwcHBwcHBwcHBwcHBqampwcHBwcHBwcHBzc3NwcHBwcHBwcHBwcHBwcHB6enpxcXFwcHBxcXFwcHBwcHBxcXFwcHBwcHBwcHBxcXFwcHBvb29wcHBwcHBwcHBwcHDmBwfKAAAAMnRSTlMAAhVLVT4vv/////WOCrP7//9yK/HuxxCJ0HwGfySCWx7/q9SEGZpDUDllpeuV3+S22PgUu6wAAAK1SURBVHgB7ZaFmqMwEIBnqhMozUzd3QV23//lLjU0t3CufyX2/cRDABC+HoRSufIFVDFeXa1OqjiO2/Ai22sqTVwYYmlBSFsTdbqFcbX0onGqMXEVS/1ClGCgZJiU21CYUUauwRgLMYaJRUYoBCbl/zJ+lm+qGXNkBK9dszNFwA9lBJwR2+nMAXLkxVARk43lyoMfV/O39DkH/GXz/OvlmeJ1oT7b5NFyWf/qmmvNXhkMWXlc2UxCNpWxzff6YJMRKrRUIUuq5DQoKbeWEsHLVkzGJyZikw3b3XoYst5tISQ0jGuXM43ESBi394dK+bi4JbOyxY6SpdN57YrwpXctRwUF5tkElR45wjfE6Zxr9pptIIwHWojJ7XQ7rgnFrwBgMRnGOybWvVF1u20frj7T/WjAD5odX81MHLQ8eDDdaeLu3iLHnDAsu8z+ESB8aEuT9EqA2anK2P03oUdF4azNWEvLRO2LJFofpmIimkCiH/268Hs/JSO0FCdWpvk1hP1tqk0VYn3IyPPXxqD5M2fbY75CSl70hAYmYtuS0W5EmF6YU5vLJHaKmxnZsveJ+ZgqRdgo6WVlfBHJZJFnSoYFam53mA8Z+aq4XkBerJlH0YBFc7/Lkw3eWbjnpUa72mV9yt8YCCchnRhuE70KXaaA+fJ0zTzcJo6hg0uyg4xss1tMvOrfLZNCgKPPFBgj5+75vI+L5mYNHjpgxWctDYjkKVjBR8OHoiXYVE3tsDicNWvi9/3jUTUiejuvslynT7vWE2IJ6s3VW881UWYS/2Fv144WFeE4z3B5fe3y7dVlFpPviDH90+Bh34rnHVEWHNWIzpf9KnDZcYQ6740p4M0OjG3Y71Y2BuEE3YLpqXE+7yaHkknebQ6qkCX3HYMPW628j24xcQFeefhIbci5InwVxp63tvAJwN9WhCnsGIoAAAAASUVORK5CYII=)',
          src2:'url(data:image/png;base64,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)'
        },
        {
          name:'发现',
          src:'url(./static/image/icon/zuanshi.png)',
          src2:'url(./static/image/icon/zuanshi_active.png)'
        },
        {
          name:'购物车',
          src:'url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEoAAABHCAYAAACgTtGvAAADTUlEQVR4AWIsKCiYx8AAaNcegGu7ojCO56K2Gw3q3mZUa1Tbtjmobbsdq+2zbQ2fNYr5/GLbyf/5vRWdc7Ku9t3fzG8Qnnx373WyT5L0PPwYKb0Yh5eQUPGLkpx9fALGr/855hY1Dr1wk3MTsaiXEIBvCD9CJmS33sDkQOYyW9TAZNsV5ayoQnTj8GTYogamA0WwK8rDnDod59qidAb6nShFD/riTCtW4QG3RWV7KOo/JMOPeMtxuBFz8BOSgnCS3AS+832KNU5f7UJ0uVxRr6AcJuRdp0V1I99lUYuRDF+cOAaPohoyV8ui3Az005AMU9KJmXgJMr2iKA8D3bwsh0zWwKLsQE9xVpQ9HIdGW1QJ2uQXTZCictwU1YOCBFhRl0ImWxbldqCfhhTDV9Ru1MqivMypkOErKmvgWc8O9DScPHAXiaLs087BB7mXorajRWlF3YlS9GlDKe5U2Haet14vcpWK+i+MR6Bk/KdQVA9yRVGe59SpSEWsxQe3kS96MdpEUfpHmSg+htmNlxVWVC72JgiiMtBXQMTBY5jYyTk4Q84n8SjY/oogVpNKUTvQKFeULcrZqspAvEfuig6UaBd1ClINW1F56NYoSiZk4hnvyKLsQD8NybYoj2c8jaJKUSu/mWkP60RRnpNr8IpqwA6torLlnQ9pZg1yWZS988nrzlYvyoDtdxLS5c+mWZQpTzsvgS+cW68KECvKpDOeLEpx+4VM+fOUdlEm3PlkUbkgukXlGjDQLx647fSLyorzojJwoUJRxv4r0NG4H4vEHa8bSzEgQYwmtSgTJ++XgbjMDJSrrSiRbJiQTnwLEp6ilsGEfIwCEKWtJ/IXTsbbOAPxlG7k4xdMAglfUX34GjA3fsRGbFG2KFuUjS3KFmWLskXZonx4FPOwGfPxGHyIRoJ4GUuxGdNxu4cvol7Sf3gRB3IF7sX9eAZ9EX6cMg93iOt5FL/ik2itqJdBSYPmKbyOSOYLUZI8BN8VvaKGzytQiN71RKuo872/Xz3HIUXnevSLKsdwKUOk0oYGnevRL2oyhstUKETveqJV1N9Yg8GyDn9EYZjnY7DMxYRoFdWBW/AdStCFEnyPm9GKSKYW1+Ef7EQX8vE+HkEPHKUfkZb5KCDSBwMAAAAASUVORK5CYII=)',
          src2:'url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEoAAABHCAYAAACgTtGvAAACpElEQVR4Ae3bQ7wrPRjH8Rxj8/La9uour23btm3btm3btm3bNnL/i1m1OchMOv2cPFn86g6+dTPDeGM2G/1CPBb9QrMRoxaLEUmAZaBiGVWo2TawElKEiqmBAqj8Bsq76gKoVgbKu2wCqCkGyrsw9MMD6oCBEnfZA+qVgRK3AnGPEhko7/oJoM4irmmf0QFUVhaqkmBidxAn0GAZqMyCCbxGnEglYgsVjL573PknIaidMm9o5xEn2nsZqKWEod7KQPUkDHVABqocYajJMlDpCUM1k4EKQp+JQuW2EGLdGaJQ/8pCLSSI9BAxWaiuBKG22IEqRRBqhB2oVASh6tqBCkQfFS3AZh/+p5XImj5XUHZpKKsTihZAHkkeizvsJ4qwCzUnjkAlVLCMVxGzC9VJEdQmHw6kJrGmzx222glUMcSJ1M8JVHJCUBVtQ1m9IwKVwSnUYQJIX1GwU6iZBKDOIOYUqi0BqPkqoAoRgOqkAioxAajiKqAYgQHQ5KqgDmiM9BYxVVBTNIY6oBKqpcZQU1RC5dMYqqVKqHgaQ+VRBmX1XFOof1VD7dF1eEo11AQNobb7AqqZhlCjfAGVU8/hKfVQ/2qG9AMlVA5l9VgjqMWI+QpquyZI31AGeSh6f+K1RcyXUAGoD3oVR9+TLqAacrt4mAyUgTJQBspAGag4kIEyUAYqAFVC69BJtB5Vti5nfigYNUBbreVZjor4GyoAzUZc0CI/YIWiLYgLGupPqIaIR1NTl6H6S2xf4CrUkRgW7KTLUI9i3phVPZSK4as3LiJFIB5D59RDqdlB+zJiLvY2huXZqh5Kzd5XvV2GmiwxkOAqVBg6iLigwyjSZah/0RXEBa1BQX6BsgpH/dBN9N067o8iEPNDf6Mx6D76bsG1jzWS1R8KbrV38WJ0IQAAAABJRU5ErkJggg==)'
        },
        {
          name:'我的',
          src:'url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADwAAAA8CAMAAAANIilAAAAAkFBMVEUAAABiYmJoaGhxcXFwcHBwcHBycnJwcHBwcHBwcHBwcHBwcHBwcHBwcHBwcHBwcHBwcHBzc3NycnJwcHB2dnZwcHBwcHBxcXFwcHBwcHBwcHBwcHBwcHBwcHBwcHBvb29wcHBwcHBwcHBwcHBwcHBwcHBwcHBwcHBwcHBvb29wcHBwcHBwcHBwcHBnZ2dwcHC6NtRcAAAAMHRSTlMAAwoXHycsRXWfxdzz+jB+vv8ljv/+72HU682aahOXTQ+wNblUtazlb1elWuE7B4ObTEwxAAADdklEQVR4AZWWh5rqOgyEnd7LEA2k0Os24P3f7vLdBVOSTTizBbfflmVZWHXJUBeZlu24rmNbpm56U5bnB2EUJ0kchYHvWep9pVke40FxnqX9hLZ4VEQQgEk8vihOCAiiYnTpHGKNSQmAVd1MvdRxUm/a1BUBlJNLZz87mycAo2axNHTjctFEBJL5rI82lL0SYjxfX+sX/ZbW8zEoK1sZPexGiHL7cDa6uC1B2XTQ2uaVEDv3idS8uwNl9bflhRB7q7vbUNYelOKvhRck8g5W0znIhTI6+2rwsO5zyfpA1N2zfwg5Ub2akPLR6a0I2Jn9J2nugKjLZ5/s3FDLLfxUba0guTUYgLlg1e6wIkg2HPqZIJq1DRpj3Gu1HlbpYbrVT6QcDcOjWpKPFlxAclMNyswFRQv+ElmpN7QS+WrBe5H9kNV6XP/Kre5HuL3yHLIx1LB2gnkLzii1peuW9RwES10KhVkL/o5x8G6tXlnq8kXTn91vCjHU8Ufi75Zv3AMwvbUWIuFSGbebWIlsr+UpcXBVSyHk6zbjBGRxO3UnB+PrPT99CULVVkZU66txy42Q+/X/w7c1KGdtBJh1wE6lM5Sh0lKIn+Dbm+5iEF+3O1wIK0d1aA6Oj7ddpzkAxuMEv9le/bprTDSdsZNWxEanCescERAgCSeXputuwCrtjsMMRHEZdI2p1N/XUdhMLB1lBYjsrzSxAZk9BOPSSUfGfTaflFyb1kqtEZhkevjvqNv/U5YQUU9qXlQgG/s+n6GH2gGIaqF6tD2ACL/NVg74DEEctqpXXg0i3kxe5lzFIGpPDcgJElA4ffouiYVIAkcN6vRdM0HsKkP7MUHC8PvUz11d3JDE8Q57QrL47Rt4DB2bmMRudoetXMi4OQ4+h2b+Dwis7Ke7vieIH3/Zz7orgizPs5eT8ksS3Lt97LEE8XN+fa9dKs75AKI89rCREJujemavVS8HJTr+FdpuKUQwa6FX3ArAru8znXtQmH8/aMwClFX3gDOI5tT3oDk1IM6dG44fEknPjY+7nLbDLXuqvscUsGs3b2NtUR+dgfG2tcRe9PusD7ZLyKplzw94VidjSKoAfvTurrAPRLZ6Q3YE+C8WBoLQHjmjATkjO4QEL8EVgUn1lhKidJXxAC9A4k2RWDzBn5LwPSVkIp9Pm16m7j8ovWaF/wCc31NtcLeHeAAAAABJRU5ErkJggg==)',
          src2:'url(data:image/png;base64,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)'
        }
      ],
      tabs:['推荐','手机','智能','电视','笔记本','家电','生活周边'],
      show:false,
      noScorllTop:false,
      noScorllLeft:false,
      active:'home',
      scroll:'',
      fades:''
    }
  },
  components:{
    page0,page1,page2,page3,page4,page5,page6,
  },
  mounted(){
    // window.addEventListener('scroll', this.onScrollHeight)
    window.addEventListener('resize',this.setRemUnit)
    // window.addEventListener('pageshow',function(e){
    //   if(e.persisted){
    //     this.setRemUnit()
    //   }
    // })      
  },
  destroyed(){
        window.removeEventListener('resize',this.setRemUnit)
  },
  methods:{
    setRemUnit(){
      var deviceWidth = document.documentElement.clientWidth;
      var deviceHeight = document.documentElement.clientHeight;

      // if(deviceWidth > 750) deviceWidth = 750;
      var bodys = document.getElementsByClassName('main_bodyer')[0]
            bodys.style.height = deviceHeight + 'px'
            bodys.style.width = deviceWidth * 7 + 'px'
      // document.documentElement.style.fontSize = deviceWidth / 7.5 + 'px';        
    },  
    onTouchStart(a,p){
      a.stopPropagation()
      var self = this
      var startX = 0
      var startY = 0
      var isTouch = true
      var $i = document.querySelector('.itemBar:nth-child('+(p+1)+') .active i')
      var offsetWidth = document.documentElement.clientWidth     
      document.addEventListener("touchmove", function (e) {
        e.returnValue = true
      });             
      var width = offsetWidth/1.8
      var _this = a.currentTarget
      console.log(_this)
      var main = _this.parentNode
      var lefts = main.style.left 
      main.style.left = lefts.slice(0,-2) + 'px'      
      var a =a.touches[0]
      var startLeft = a.clientX
      var startTop = a.clientY
      var del = 0
      setInterval(()=>{
          del++
      },10)
      _this.ontouchmove = function(b){
        // b.stopPropagation()        
        var b = b.touches[0]
        var clientX = b.clientX
        var clientY = b.clientY
        startX = Math.abs(clientX-startLeft)
        startY = Math.abs(clientY-startTop)
        if(isTouch){
          isTouch = false
          if(startX>=startY){
            self.noScorllTop = true     
            var nu = navigator.userAgent.toLowerCase();
            var isWeixin = nu.indexOf('micromessenger') != -1;
            if (!isWeixin) {
              document.addEventListener("touchmove", function (e) {
                e.preventDefault()
              });              
            }                    
          }else{
            self.noScorllLeft = true       
          }          
        }
        if(!self.noScorllLeft){
            var ismove =  Number(lefts.slice(0,-2))+(Number(clientX-startLeft))
            if(ismove<=0 && ismove>-2250){
                main.style.left = Number(lefts.slice(0,-2))+(Number(clientX-startLeft))+'px'
                $i.style.left = -(clientX-startLeft)/8+'px'              
            }                 
        }
 
        _this.ontouchend = function(c){
          c.stopPropagation()          
          console.log(lefts)
          console.log(offsetWidth)
          console.log(p)
          main.style.left = -offsetWidth*p+'px'
          document.addEventListener("touchmove", function (e) {
            e.returnValue = true
          });                    
          clearInterval()
          // main.style.left = lefts.slice(0,-2) + 'px'
          if(self.noScorllLeft===false){
            var c = c.changedTouches[0]
            var endLeft = c.clientX
            var offWidth = endLeft-startLeft

            if(offWidth>0){
              if(Number(offWidth)>=width || Number(offWidth)>=width/4 && del<15){
                  p>0?p:0
                  p>0?p--:0
                  self.tabSelect(p)
                }
            }
            if(offWidth<0){
              if(-Number(offWidth)>=width || -Number(offWidth)>=width/4 && del<15){
                p<6?p:6
                p<6?p++:p
                self.tabSelect(p)
              }            
            }
            $i.style.left = 0+'px'              
          } 
          self.noScorllTop = false
          self.noScorllLeft = false               
        }
      } 
    },
    add(){
      let url = this.HOST + '/getMaindata.php'
      Dialog.alert({
        title: '标题',
        message: '代码是写出来给人看的，附带能在机器上运行'
      }).then(() => {
          this.$axios.get(url, {})
          .then(response=> {
            console.log(response.data.products)
            let list = response.data.products;
          })
          .catch(error=> {
          });   
      }); 
    },
    openBar(){
      this.show = !this.show
    },
    headerBarSelect(e){
      var self = this
      setTimeout(()=>{
        self.show = !self.show      
      },200)
      self.tabSelect(e)
    },
    tabSelect(e){
      var _self = this
      let $this = document.getElementsByClassName('itemBar')[e]
      var $main = document.getElementsByClassName('main_bodyer')[0]
      // console.log(this.$route.meta.isLogin)
      // var $parent = $this.parentElement
      var $parent = document.getElementsByClassName('contentBar')[0]
                  // console.log($parent.scorllLeft)
                  // console.log($parent.offsetLeft)
                  // console.log($parent.scorllWidth)
                  // console.log($parent.offsetWidth)
      let $index = $this.getAttribute('index')
      let width = $this.offsetWidth
      let clientWidth = document.documentElement.clientWidth
      if($index>this.index){
        this.fades = "lefts"
        if($index>3){
          // this.$nextTick(()=>{

            console.log($index)
                        console.log(_self.index)
            console.log($parent)
            console.log(width)
            var s = $parent.scrollLeft

            console.log(Number($index))
            console.log(Number(_self.index))
            // console.log('s: '+$parent.scorllLeft)
            var w = width*((Number($index)+1)-Number(_self.index))
                        $parent.scorllLeft = w
            console.log(s)
            console.log(w)
            console.log($parent.scorllLeft)
                        // $parent.style.left = -w+'px'
            // $parent.scorllLeft = width*($index+1-this.index)
          // },200)
        }
      }else{
        this.fades = "rights"
        if($index<4){
          this.$nextTick(()=>{
            console.log($index)
            console.log(this.index)
            console.log($parent)
                        console.log(width)
            console.log('s: '+$parent.scorllLeft)
            console.log(width*($index+1-this.index))
            $parent.style.left = width*($index+1-this.index)+'px'            
            // $parent.scorllLeft = width*($index+1-this.index)          
          },200)
        }        
      }
      $main.style.left = -clientWidth* $index+'px'      
      this.index = $index
      this.lineHeight = !this.lineHeight
      this.lineHeight2 = !this.lineHeight2
    },
    selectFootBar(e,index){
      this.actives = index
      this.lineHeight = !this.lineHeight
      this.lineHeight2 = !this.lineHeight2      
    },
    // paperScroll(e){
    //   e.stopPropagation()
    //   let $this = e.currentTarget  
    //   // let $this = e.target  
    //   let scollTop = $this.scrollTop
    //    console.log(scollTop)   
    // }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style lang="less" scoped>
.hello{
  margin:0 auto;
  color: #333333;
  overflow: hidden;
  height: 100%;
  font-size: .32rem;
	i{
    font-size: 0.36rem;
  }
  .header{
    position: relative;
    box-shadow: 0px 0px 10px 3px rgba(0,0,0,.3);
    height: 74px;
    background: red;
    z-index: 100;
    .moveLine{
      position: absolute;
        z-index: 1000;
        top:0px;
      div{
        background: #ff6700;
        opacity: .5;
        height: 3px;
      }
      .lineHeight{
        width: 0px;
        animation: lineMove .3s 1;
      }
      .lineHeight2{
        width: 0px;
        animation: lineMove2 .3s 1;        
      }
      @keyframes lineMove {
        0%{
        width: 0px;
        }
        100%{
        width: 375px;
        }
      }
      @keyframes lineMove2 {
        0%{
        width: 0px;
        }
        100%{
        width: 375px;
        }
      }      
    }    
    .main_header{
      width: 100%;
      position: fixed;
      top:0px;
      left: 0px;
      z-index:100;
      .main_header_top{
        display: flex;
        justify-content: space-between;
        -webkit-box-align: center;
        padding: 0 15px;
        align-items: center;
        background: #f2f2f2;
        color:#666;
        height: 44px;
        .main_header_left{
          img{
            width: 25px;
            height: 16px;
          }
        }
        .main_header_search{
          width: 78%;
          line-height: 32px;
          padding:0 10px;
          text-align: left;
          background: #fff;
          border:1px solid #e5e5e5;
          color: rgba(0,0,0,.3);
          i{
            vertical-align: -2px;
            padding-right:5px;
          }
        }
        .main_header_right{
          i{
            vertical-align: -2px;
            font-size: 0.42rem;
          }
        }    
      }
      .main_header_tab{
        font-size: 0.28rem;
        color: #747474;
        position: relative;
        background: #f2f2f2;
        height: 30px;
        line-height: 24px;
        .contentBar{
          width: 88%;
          // position: absolute;
          // left: 0;
          // user-select: select s;
          touch-action: pan-x!important;
          overflow-x: auto;
          text-align: left;
          white-space: nowrap;
          height: 20px;
          .itemBar{
            display: inline-block;
            padding:0 12px;
            height: 30px;
            span{
              position: relative;
              display: inline-block;
            }
            .active{
              color: #FF6B00;
              i{
              width: 100%;
              display: inline-block;
              position: absolute;
              height: 0px;
              border-bottom: 2px solid #FF6B00;
              top: 27px;
              padding: 0 12px;
              left: 0px;     
              }
            }
          }
        }
        .downBar{
          line-height: 30px;
          padding:0 15px;
          background: #f2f2f2;
          box-shadow:-15px -5px 12px 0 #f2f2f2;
          position: absolute;
          top:0;
          right: 0;
          z-index: 101;
          span{
            vertical-align: 5px;
            display: inline-block;
            width: 8px;
            height: 8px;
            border:1px solid #b0b0b0;
            border-top:none;
            border-right:none;
            transform: rotate(-45deg);
            transition:all .3s;
          }
          .openBar{
            transform: rotate(135deg);   
            vertical-align: 0px;       
          }
        }
        .showContent{
          position: absolute;
          overflow: hidden;
          padding-left: 13px;
          top:0px;
          height: 0px;
          background: #f2f2f2;
          transition:all .1s;
          opacity: 0;
          p{
            margin-top:15px;
            text-align: left;
            color: #333;
            font-size: 0.3rem;
          }
          .showBody{
            margin-top:5px;
            width: 100%;
            height: 83px;
            display: flex;
            flex-wrap: wrap;
            align-items: center;
            span{
              width: 80px;
              line-height: 29px;
              border: 1px solid #eee;
              border-radius: 4px;
              color:#333;
              background: #fff;
              margin-right: 10px;
            }
            .heHeight{
              border: 1px solid #ff6700;
              color:#ff6700;
              background: #fde0d5;
            }
          }
        }
        .showHeight{
          opacity: 1;
          z-index: 100;
          transition:all .1s;
          height: 130px;    
        }
      }    
    }    
  }
  .main_bodyer{
    z-index: 99;
    width: 100%;
    height: auto;
    overflow: hidden;
    position: relative;
    display: flex;
    flex-wrap: nowrap;
    top:0px;
    left: 0px;
    height: 100%;  
    padding-bottom: 130px;
    transition: left .1s ease; 
    .bodys{
      float: left;
      position: relative;
      left: 0px;
      top:0px;
      width: 7.5rem;
      overflow-y:scroll;
      // -webkit-overflow-scrolling: touch;
      // transition: all .5s; 
      div{
        width: 100%;
        // height: 1800px;  
        // overflow: hidden;
        position: relative;
        .carousel{
            width: 100%;
            height: 300px;
            background: #fff;
            position: absolute;       
        }       
      }
    }
    .noScorllTop{
      overflow-y: hidden;
    }
    .zindex{
      z-index: 99;
    }
    .lefts-enter{
      @keyframes onLeft{
        0%{
          left:750px;
        }
        100%{
          left:0px;
        }
      }      
    }
    .lefts-enter-active{
      animation:onLeft .5s 1 ease-in-out;
    }
    .rights-enter{
      @keyframes onRight{
        0%{
          left:-750px;
        }
        100%{
          left:0px;
        }
      }        
    }
    .rights-enter-active{
      animation:onRight .5s 1 ease-in-out;
    }    

  
  }
  .noScorllLeft{
    overflow-x: hidden;
  }
  .footer{
    width: 100%;
    z-index: 1000;
    display: flex;
    justify-content: space-around;
    position: fixed;
    align-items: center;
    box-shadow:0px 0px 5px 2px rgba(0,0,0,.1);
    bottom: 0px;
    height: 52px; 
    background: #fff;
    // margin:5px 0 3px;
    a{
    margin:5px 0 2px;
    display: inline-block;
    -webkit-box-flex: 1;
    -webkit-flex: 1 1 auto;
    flex: 1 1 auto;
      i{
        display: block;
        width: 20px;
        height: 20px;  
        background-position: center;
        // background-color: #333;
        background-size: cover; 
        margin: 0 auto;
      }
      span{
        display: block;
        font-size: 0.24rem;
        color:#999;
        margin: 5px 0px;
       text-align: center; 
      }
    }    
  } 
}
</style>
