https://github.com/yarnpkg/berry/issues/2074

[Bug] workspace-tools foreach doesn't run each workspace for node 15 #2074

Run this command to test on Node 15: `docker build -t yarn-bug .`

As you can see only the first workspace package found, here "abc" is printed.

# Output

```
Step 4/6 : RUN yarn set version berry
 ---> Running in 57f7d146d96e
➤ YN0000: Downloading https://github.com/yarnpkg/berry/raw/master/packages/yarnpkg-cli/bin/yarn.js
➤ YN0000: Saving the new release in .yarn/releases/yarn-2.4.0.cjs
➤ YN0000: Done in 0s 937ms
Removing intermediate container 57f7d146d96e
 ---> 0805801a1f55
Step 5/6 : RUN yarn install --immutable
 ---> Running in 1fe19763b076
➤ YN0000: ┌ Resolution step
➤ YN0000: └ Completed
➤ YN0000: ┌ Fetch step
➤ YN0000: └ Completed
➤ YN0000: ┌ Link step
➤ YN0000: └ Completed
➤ YN0000: Done in 0s 82ms
Removing intermediate container 1fe19763b076
 ---> d5c10ffbc3a4
Step 6/6 : RUN yarn print
 ---> Running in 2c47b18eb818
➤ YN0000: abc
Removing intermediate container 2c47b18eb818
 ---> 9f5d916f5e0b
Successfully built 9f5d916f5e0b
Successfully tagged yarn-bug:latest
```
