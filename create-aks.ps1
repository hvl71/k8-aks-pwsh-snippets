#sensitive variables in Powershell
#https://social.technet.microsoft.com/wiki/contents/articles/4546.working-with-passwords-secure-strings-and-credentials-in-windows-powershell.aspx

az aks create `
    --resource-group myresgroup `
    --name myAKSCluster `
    --node-count 1 `
    --enable-addons monitoring `
    --kubernetes-version 1.15.5 `
    --generate-ssh-keys `
    --windows-admin-password "$env:AKS_PASSWORD_WIN" `
    --windows-admin-username azureuser `
    --vm-set-type VirtualMachineScaleSets `
    --load-balancer-sku standard `
    --network-plugin azure


