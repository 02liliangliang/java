

第四章：JSP与EL，JSTL表达

    JSP基本语法
        简介
            简介：Java server page（是服务器端的动态资源）
            好处：jsp页面中可以嵌套Java代码，可以为用户提供动态代码，可以对获取到的数据进行排版
            运行原理：第一次访问JSP页面时，JSP会被翻译成servlet
        注释
            显性注释
                能够在客户端查看
                <!--继承的HTML注释-->
                显示在页面上：&lt;!--注释--&gt;
            隐形注释
                不能在客户端查看
                JSP自带的注释：<%--自带的注释--%>
                继承Java的注释
                ｜ 用在Java的脚本段中
                    // 单行注释
                    /*多行注释*/
                显示在页面上：&lt;!--注释--&gt;
        scriptlet脚本小程序
            第一种：Java脚本段，可以写Java代码，定义局部变量
                <%脚本段%>
                生成的代码在Servlet中的service方法中
            第二种：声明，声明全局变量，方法，类等
                <%! 全局变量,方法，类%>
                生成的代码在Servlet的类体中
            第三种：输出表达式。
                <%= 表达式，数据，变量%>
                生成的代码在Servlet的servIce方法中，相当于out.print()
        JSP的指令标签
            主要用于多个jsp页面的整合
            ｜ （把一个jsp页面放到另一个jsp页面上）
                静态包含
                ｜ 使用include标签即可
                    <%@ include file="要包含的jsp文件地址（相对路径）"%>
                    静态包含就是将内容直接进行了替换，编译时是把多个jsp文件翻译成一个servlet源码文件，全部放在了jspService方法中，所以多个页面上不能有同名的变量，耦合性高，不灵活
                动态包含
                ｜ 使用include动作标签                                  
                    格式：<jsp:include page="要包含的页面地址"></jsp:include> 或者<jsp:include page="<%=储存着也页面地址的变量%>"></jsp:include>
                    特点
                        动态包含相当于方法的调用
                        不同页面中可以出现同名的变量
                        编译时，不同的jsp文件会生成的不同的Servlet源码文件
                        效率高，耦合性低
                    注意
                        当动态包含不需要传递参数时：
                            <jsp：include>这里不能出现任何内容，包括空格和换行</jsp：include>
                        当动态包含需要传递参数时：
                            <jsp:include page="index.jsp"><jsp:param name="变量名" value="变量值（支持动态绑定）"/></jsp:include>
                            ｜ name不支持表达式，value支持表达式







