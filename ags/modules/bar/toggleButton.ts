export function toggleButton({window = "",child, setup, ...rest}) {
    return Widget.Button({
        child: Widget.Box({ child  }),
        setup: self => {
            let open = false

            self.toggleClassName("toggleButton")

            self.hook(App, (_, win, visible) => {
                if (win !== window){
                    return
                }
                if (open && !visible) {
                    open = false
                    self.toggleClassName("active", false)
                }

                if (visible) {
                    open = true
                    self.toggleClassName("active")
                }
            })
            if (setup)
                setup(self)
        },
        ...rest
    })
}
