# Set up COMP2521 Docker Image on Linux

Note: these instructions are somewhat bare-bones right now. They should work,
but it'd be nice to have something a little more thorough. Consider making a
pull request if you'd like to help out!

1. Ensure `git` is installed.

2. Install the [Docker Engine](https://docs.docker.com/engine/install/#supported-platforms).
   Be sure you are installing the engine, and not the desktop app (which will
   likely not work with the given scripts).

3. Ensure your user is a member of the "docker" group by running
   `sudo gpasswd -a $USER docker`.

4. Ensure the Docker service is enabled. On most systems, you'll need to run
   `sudo systemctl enable --now docker`.

5. Download the project by running `git clone https://github.com/COMP2521UNSW/2521-docker-image.git`.
   The image will download to your current terminal directory, so ensure you
   run this in a safe location (to avoid data loss).

6. Run the setup script and follow its prompts. You can run
   `cd 2521-docker-image` then `./scripts/setup`.
