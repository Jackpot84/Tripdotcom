<%@ page contentType="text/html; charset=UTF-8" %>
<!-- Navbar -->
        <nav class="main-header navbar navbar-expand navbar-white navbar-light">
            <!-- Left navbar links -->
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
                </li>
            </ul>

            <!-- Right navbar links -->
            <ul class="navbar-nav ml-auto">
                <!-- Navbar Search -->
                <li class="nav-item">
                    <div class="navbar-search-block">
                        <form class="form-inline">
                            <div class="input-group input-group-sm">
                                <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search">
                                <div class="input-group-append">
                                    <button class="btn btn-navbar" type="submit">
                                        <i class="fas fa-search"></i>
                                    </button>
                                    <button class="btn btn-navbar" type="button" data-widget="navbar-search">
                                        <i class="fas fa-times"></i>
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </li>

                <!-- 연락처 -->
                <li class="nav-item dropdown">
                    <a class="nav-link" data-toggle="dropdown" href="#">
                        <i class="fas fa-phone-square-alt"></i>
                        <span class="text-xsm">연락처</span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
                        <span class="dropdown-header">호텔 서포트팀</span>
                        <div class="dropdown-divider"></div>
                        <a href="#" class="dropdown-item">
                            <i class="far fa fa-phone-alt mr-2"></i> <span class="text-sm"> 글로벌 핫라인</span>
                            <span class="float-right text-muted text-sm">+44-20-3929 3737</span>
                        </a>
                        <div class="dropdown-divider"></div>
                        <a href="#" class="dropdown-item">
                            <i class="far fa fa-phone-alt mr-2"></i> <span class="text-sm"> 한국</span>
                            <span class="float-right text-muted text-sm">+82-2610 52115</span>
                            <span class="display-right text-muted text-sm">every day 9:00-18:00</span>
                        </a>
                        <div class="dropdown-divider"></div>
                        <a href="#" class="dropdown-item">
                            <i class="far fa fa-phone-alt mr-2"></i> <span class="text-sm"> 미국</span>
                            <span class="float-right text-muted text-sm">+61-2905 67676</span>
                            <span class="display-right text-muted text-sm">every day 9:00-18:00</span>
                        </a>
                    </div>
                </li>

                <!-- 도움센터 -->
                <li class="nav-item dropdown">
                    <a class="nav-link" data-toggle="dropdown" href="#">
                        <i class="fas fa-question-circle"></i>
                        <span class="text-xsm">도움센터</span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
                        <span class="dropdown-header">
                            <form class="">
                                <div class="input-group input-group-sm">
                                    <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search">
                                    <div class="input-group-append">
                                        <button class="btn btn-navbar" type="submit">
                                            <i class="fas fa-search"></i>
                                        </button>
                                        <button class="btn btn-navbar" type="button">
                                            <i class="fas fa-times"></i>
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </span>
                        <span class="dropdown-header">FAQ</span>
                        <div class="dropdown-divider"></div>
                        <a href="#" class="dropdown-item text-sm text-muted">
                            <i class="fas fa-question mr-2"></i> 호텔의 리뷰 수량이 왜 줄었나요?
                        </a>
                        <div class="dropdown-divider"></div>
                        <a href="#" class="dropdown-item text-sm text-muted">
                            <i class="fas fa-question mr-2"></i> 선불금 추후 입금이란?
                        </a>
                        <div class="dropdown-divider"></div>
                        <a href="#" class="dropdown-item text-sm text-muted">
                            <i class="fas fa-question mr-2"></i> 경쟁 호텔 관리 방법
                        </a>
                        <div class="dropdown-divider"></div>
                        <a href="#" class="dropdown-item dropdown-footer text-xsm text-muted">
                            <i class="fas fa-plus mr-2"></i>더보기
                        </a>
                    </div>
                </li>

                <!-- Notifications Dropdown Menu -->
                <li class="nav-item dropdown">
                    <a class="nav-link" data-toggle="dropdown" href="#">
                        <i class="fas fa-user"></i>
                    </a>
                    <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
                        <span class="dropdown-header">${manager.manager_Issued_Email }</span>
                        <div class="dropdown-divider"></div>
                        <a href="/accountManager_into.mg" class="dropdown-item">
                            <i class="fas fa-user-cog"></i> &nbsp; 마이 페이지
                            <!-- <span class="float-right text-muted text-sm">3 mins</span> -->
                        </a>
                        <div class="dropdown-divider"></div>
                        <a href="#" class="dropdown-item">
                            <i class="fas fa-sign-out-alt"></i>&nbsp;&nbsp; 나가기 (Logout)
                            <!-- <span class="float-right text-muted text-sm">2 days</span> -->
                        </a>
                        <!-- <div class="dropdown-divider"></div>
                        <a href="#" class="dropdown-item dropdown-footer">See All Notifications</a> -->
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-widget="fullscreen" href="#" role="button">
                        <i class="fas fa-expand-arrows-alt"></i>
                    </a>
                </li>
            </ul>
        </nav>
        <!-- /.navbar -->