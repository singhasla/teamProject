<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set var="searchList" value="${searchList}" />
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Anime Template">
    <meta name="keywords" content="Anime, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Anime | Template</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Mulish:wght@300;400;500;600;700;800;900&display=swap"
    rel="stylesheet">

    <!-- Css Styles -->
	<link rel="stylesheet" href="../css/bootstrap.min.css" type="text/css">
	<link rel="stylesheet" href="../css/font-awesome.min.css" type="text/css">
	<link rel="stylesheet" href="../css/elegant-icons.css" type="text/css">
	<link rel="stylesheet" href="../css/plyr.css" type="text/css">
	<link rel="stylesheet" href="../css/nice-select.css" type="text/css">
	<link rel="stylesheet" href="../css/owl.carousel.min.css" type="text/css">
	<link rel="stylesheet" href="../css/slicknav.min.css" type="text/css">
	<link rel="stylesheet" href="../css/style.css" type="text/css">
</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Header Section Begin -->
    <!-- Header -->
	<jsp:include page="../inc/header.jsp" />
    <!-- Header End -->

    <!-- Breadcrumb Begin -->
    <div class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__links">
                        <a href="#"><i class="fa fa-home"></i> Home</a>
                        <a href="#">Search</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->

    <!-- Product Section Begin -->
    <section class="product-page spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="product__page__content">
                        <div class="product__page__title">
                            <div class="row">
                                <div class="col-lg-12 col-md-8 col-sm-6">
                                    <div class="section-title">
                                        <h4>검색결과 </h4>
                                    </div>
                                </div>
                            </div>
                        </div>
		           		<c:if test="${empty searchList}">
                        <div class="row">
		                    <div class="col ">
		                        <div class="anime__details__review">
		                            <div class="anime__review__item">
		                                <div class="anime__review__item__text">
					                        	<h4 style="color: white">
					                        		검색하신 결과가 없습니다. 띄어쓰기에 유의해주세요.
					                        	</h4>
		                                </div>
		                            </div>
		                        </div>
		                    </div>
		                </div>
					    </c:if>
                        <div class="row">
	                        <c:forEach var="list" items="${searchList}">
                            <div class="col-lg-3 col-md-6 col-sm-6">
                            	<a href="${contextPath}/detailServlet/detail.do?movieNo=${list.movieNo}"/>
                                
                                <div class="product__item">
                                    <div data-setbg="${list.movieImage}" style="background-size:contain;" class="product__item__pic set-bg" >
                                        <div class="ep">18 / 18</div>
                                        <div class="comment"><i class="fa fa-comments"></i> 11</div>
                                        <div class="view"><i class="fa fa-eye"></i> ${list.movieTime}</div>
                                    </div>
                                    <div class="product__item__text">
                                        <ul>
                                            <li>${list.CN1}</li>
                                            <li>${list.CN2}</li>
                                        </ul>
                                        <h5><a href="#">${list.movieName}</a></h5>
                                    </div>
                                </div>
                            </div>
                            </c:forEach>
                        </div>
                    </div>
                   <!--  <div class="product__pagination">
                        <a href="#" class="current-page">1</a>
                        <a href="#">2</a>
                        <a href="#">3</a>
                        <a href="#">4</a>
                        <a href="#">5</a>
                        <a href="#"><i class="fa fa-angle-double-right"></i></a>
                    </div> -->
                </div>
		</div>
</div>
</section>
<!-- Product Section End -->

<!-- Footer Section Begin -->
<jsp:include page="../inc/footer.jsp" />
<!-- Footer Section End -->

</body>

</html>