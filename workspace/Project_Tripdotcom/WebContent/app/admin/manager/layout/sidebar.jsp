<%@ page contentType="text/html; charset=UTF-8"%>
<!-- Main Sidebar Container -->
<aside class="main-sidebar sidebar-dark-primary elevation-4">
	<!-- Brand Logo -->
	<a href="#" class="brand-link"> <img
		src="../../../dist/img/booking.PNG" alt="ebooking Logo"
		class="brand-image modify" style="opacity: .8"> <img
		src="../../../dist/img/booking_short.PNG" alt="ebooking Logo"
		class="brand-text ebookingImg" style="opacity: .8">
	</a>

	<!-- Sidebar -->
	<div class="sidebar">

		<!-- Sidebar Menu -->
		<nav class="mt-2">
			<ul class="nav nav-pills nav-sidebar flex-column"
				data-widget="treeview" role="menu" data-accordion="false">
				<!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
				<li class="nav-item 1depth"> <!--  menu-open -->
					<a href="#"	class="nav-link"> 
						<i class="nav-icon fas fa-bed"></i>
						<p>	호텔관리 <i class="right fas fa-angle-left"></i></p>
					</a>
					<ul class="nav nav-treeview">
						<li class="nav-item">
							<a href="#" class="nav-link">
								<i class="nav-icon fas fa-hotel"></i><p>호텔등록</p>
							</a>
						</li>
						<li class="nav-item">
							<a href="#" class="nav-link">
								<i class="nav-icon fas fa-list"></i><p>호텔목록</p>
							</a>
						</li>
					</ul>
				</li>
				<li class="nav-item 1depth">
					<a href="#" class="nav-link">
						<i class="nav-icon far fa-calendar-check"></i>
						<p>예약관리 <i class="right fas fa-angle-left"></i>	</p>
					</a>
					<ul class="nav nav-treeview">
						<li class="nav-item">
							<a href="/bookingList.do" class="nav-link"> 
								<i class="nav-icon fas fa-list"></i><p>예약목록</p>
							</a>
						</li>
						<li class="nav-item">
							<a href="#" class="nav-link"> 
								<i class="nav-icon fas fa-list fas"></i>
								<p>취소목록</p>
							</a>
						</li>
					</ul>
				</li>
				<li class="nav-item 1depth">
					<a href="#" class="nav-link">
						<i class="nav-icon fas fa-users"></i>
						<p>
							예약자관리 <i class="right fas fa-angle-left"></i>
						</p>
					</a>
					<ul class="nav nav-treeview">
						<li class="nav-item">
							<a href="#" class="nav-link"> 
								<i class="nav-icon fas fa-list"></i>
								<p>예약자목록</p>
							</a>
						</li>
					</ul>
				</li>
				<li class="nav-item 1depth">
					<a href="#" class="nav-link">
						<i class="nav-icon fas fa-user-cog"></i>
						<p>
							마이페이지<i class="right fas fa-angle-left"></i>
						</p>
					</a>
					<ul class="nav nav-treeview">
						<li class="nav-item">
							<a href="/accountManager_into.do" class="nav-link"> 
								<i class="nav-icon fas fa-list"></i>
								<p>조회/수정</p>
							</a>
						</li>
					</ul>
				</li>
			</ul>
		</nav>
		<!-- /.sidebar-menu -->
	</div>
	<!-- /.sidebar -->
</aside>
