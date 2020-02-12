const lastCalled = {}

function debounce(func, time) {
    const id = uuid();

    return () => {
        lastCalled[id] = Date.now();

        setTimeout(() => {
            if (Date.now()-lastCalled[id] > time) {
                func(...arguments);
            }
        }, time);
    };
}
