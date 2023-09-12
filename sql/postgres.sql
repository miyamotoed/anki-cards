UPDATE user
SET email =
REPLACE (
        email,
        'github.org',
        'gitlab.com'
    );

-- Update duplicate rows using subquery

UPDATE jutsu
SET deleted_at = now()
WHERE id NOT IN (
        SELECT max(id)
        FROM jutsu
        WHERE deleted_at IS NULL
        GROUP BY UPPER (nombre)
    );

-- DELETE statement with USING clause

DELETE FROM
    jutsu USING forbidden_jutsus
WHERE
    jutsu.id = forbidden_jutsus.id