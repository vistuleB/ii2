function sendCmdTo3003(command) {
  const payload = { cmd: command };
  fetch("http://localhost:3003/log-event", {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify(payload),
  })
}
