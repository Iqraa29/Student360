from django.http import HttpResponseRedirect
from django.urls import reverse
from django.utils.deprecation import MiddlewareMixin


class LoginCheckMiddleWare(MiddlewareMixin):

    def process_view(self,request,view_func,view_args,view_kwargs):#adding parameter
        modulename=view_func.__module__#now accessing module name from view_func variable modulename is file name where our request has been sent to which file
        print(modulename)
        user=request.user#now accessing logged in user data from request and storing into user variable
        if user.is_authenticated:#checking user is logged or not
            if user.user_type == "1":
                if modulename == "cms_app.HodViews":
                    pass
                elif modulename == "cms_app.views" or modulename == "django.views.static":
                    pass
                elif modulename == "django.contrib.auth.views" or modulename =="django.contrib.admin.sites":
                    pass
                else:
                    return HttpResponseRedirect(reverse("admin_home"))
            elif user.user_type == "2":
                if modulename == "cms_app.StaffViews" or modulename == "cms_app.EditResultVIewClass":
                    pass
                elif modulename == "cms_app.views" or modulename == "django.views.static":
                    pass
                else:
                    return HttpResponseRedirect(reverse("staff_home"))
            elif user.user_type == "3":
                if modulename == "cms_app.StudentViews" or modulename == "django.views.static":
                    pass
                elif modulename == "cms_app.views":
                    pass
                else:
                    return HttpResponseRedirect(reverse("student_home"))
            else:
                return HttpResponseRedirect(reverse("show_login"))

        else:
            if request.path == reverse("show_login") or request.path == reverse("do_login") or modulename == "django.contrib.auth.views" or modulename =="django.contrib.admin.sites" or modulename=="cms_app.views":
                pass
            else:
                return HttpResponseRedirect(reverse("show_login"))