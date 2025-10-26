<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="index.jsp">
            <i class="fa-solid fa-hospital"></i> e-Medic
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
            data-bs-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false"
            aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">

                <!-- Admin Navbar -->
                <c:if test="${not empty adminObj}">
                    <li class="nav-item">
                        <a class="nav-link active" href="admin/index.jsp">
                            <i class="fas fa-tachometer-alt"></i> Dashboard
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="admin/doctor.jsp">
                            <i class="fas fa-user-md"></i> Doctor
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="admin/patient.jsp">
                            <i class="fas fa-user-injured"></i> Patient
                        </a>
                    </li>
                    <div class="dropdown">
                        <button class="btn btn-primary dropdown-toggle" type="button"
                            id="adminDropdown" data-bs-toggle="dropdown"
                            aria-expanded="false">
                            <i class="fas fa-user-shield"></i> Admin
                        </button>
                        <ul class="dropdown-menu" aria-labelledby="adminDropdown">
                            <li><a class="dropdown-item" href="../adminLogout">Logout</a></li>
                        </ul>
                    </div>
                </c:if>

                <!-- Normal User View -->
                <c:if test="${empty adminObj && empty userObj && empty doctorObj}">
                    <li class="nav-item">
                        <a class="nav-link active" href="admin_login.jsp">
                            <i class="fa-solid fa-right-to-bracket"></i> Admin
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="doctor_login.jsp">
                            <i class="fas fa-user-md"></i> Doctor
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="user_login.jsp">
                            <i class="fas fa-user"></i> User/Patient
                        </a>
                    </li>
                </c:if>

                <!-- Logged In User View -->
                <c:if test="${not empty userObj}">
                    <li class="nav-item">
                        <a class="nav-link active" href="user_appointment.jsp">
                            <i class="far fa-calendar-check"></i> Appointment
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="view_appointment.jsp">
                            <i class="fas fa-calendar-day"></i> View Appointment
                        </a>
                    </li>
                    <div class="dropdown">
                        <button class="btn btn-success dropdown-toggle" type="button"
                            id="userDropdown" data-bs-toggle="dropdown"
                            aria-expanded="false">
                            <i class="fa-solid fa-circle-user"></i> ${userObj.fullName}
                        </button>
                        <ul class="dropdown-menu" aria-labelledby="userDropdown">
                            <li>
                                <a class="dropdown-item" href="change_password.jsp">
                                    <i class="fas fa-key"></i> Change Password
                                </a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="userLogout">
                                    <i class="fas fa-sign-out-alt"></i> Logout
                                </a>
                            </li>
                        </ul>
                    </div>
                </c:if>
            </ul>
        </div>
    </div>
</nav>