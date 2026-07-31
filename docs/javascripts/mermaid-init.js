document.addEventListener('DOMContentLoaded', function () {
    if (!window.mermaid) {
        return;
    }

    window.mermaid.initialize({
        startOnLoad: true,
        theme: 'default',
        securityLevel: 'loose',
        flowchart: {
            useMaxWidth: true,
            htmlLabels: true
        }
    });
});
