# osekai-caching
Caching system for osekai - by @hubza
# Requirements
Made to be used in conjunction osekai-db : https://github.com/osekai/osekai-db
# Setup
- Set up osekai-db
- Include osekaiCache.php
- Import table.sql into database

And you're good to go!
# Usage
Caching database response for 2 hours
```php
$cache = getCache("medals");
if($cache != null) {
    echo $cache;
    exit;
}

$medals = Database::execSimpleSelect("SELECT * FROM Medals");
$response = json_encode($medals);
echo $medals;
Caching::saveCache("medals", 7200, $response);
```
