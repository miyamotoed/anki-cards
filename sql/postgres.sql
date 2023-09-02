UPDATE user
SET email =
REPLACE (
        email,
        'github.org',
        'gitlab.com'
    );