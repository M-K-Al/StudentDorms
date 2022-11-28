package ri.kfupm.edu.sa.student_dorms.utils;

import jakarta.servlet.http.Cookie;
import org.jetbrains.annotations.Contract;
import org.jetbrains.annotations.NotNull;

import java.util.concurrent.TimeUnit;

public class CookiesUtil {

    public static final int ONE_YEAR = (int) TimeUnit.DAYS.toSeconds(365);

    @Contract("_, _ -> new")
    public static @NotNull Cookie create(final String name, final String value) {
        return create(name, value, ONE_YEAR);
    }

    @Contract("_, _, _ -> new")
    public static @NotNull Cookie create(final String name, final String value, final int maxAge) {
        Cookie cookie = new Cookie(name, value);
        cookie.setMaxAge(maxAge);
        cookie.setSecure(true);
        cookie.setPath("/");
        return cookie;
    }
}
