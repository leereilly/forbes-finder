## Creating an alias

```
cd lib/data/2012
ln -s microsoft.com.toml microsoft.co.uk.toml
git add microsoft.co.uk.toml
git commit -m "Add alias for microsoft.com"
git push origin master
```